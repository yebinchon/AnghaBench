
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * seqops; struct tpm_chip* chip; } ;
struct TYPE_3__ {int * seqops; struct tpm_chip* chip; } ;
struct tpm_chip {int flags; int ** bios_dir; TYPE_2__ ascii_log_seqops; TYPE_1__ bin_log_seqops; int dev; } ;


 int EFI_TCG2_EVENT_LOG_FORMAT_TCG_2 ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int TPM_CHIP_FLAG_TPM2 ;
 char* dev_name (int *) ;
 int * securityfs_create_dir (char const*,int *) ;
 void* securityfs_create_file (char*,int,int *,void*,int *) ;
 int tpm1_ascii_b_measurements_seqops ;
 int tpm1_binary_b_measurements_seqops ;
 int tpm2_binary_b_measurements_seqops ;
 int tpm_bios_log_teardown (struct tpm_chip*) ;
 int tpm_bios_measurements_ops ;
 int tpm_read_log (struct tpm_chip*) ;

int tpm_bios_log_setup(struct tpm_chip *chip)
{
 const char *name = dev_name(&chip->dev);
 unsigned int cnt;
 int log_version;
 int rc = 0;

 rc = tpm_read_log(chip);
 if (rc < 0)
  return rc;
 log_version = rc;

 cnt = 0;
 chip->bios_dir[cnt] = securityfs_create_dir(name, ((void*)0));



 if (IS_ERR(chip->bios_dir[cnt]))
  goto err;
 cnt++;

 chip->bin_log_seqops.chip = chip;
 if (log_version == EFI_TCG2_EVENT_LOG_FORMAT_TCG_2)
  chip->bin_log_seqops.seqops =
   &tpm2_binary_b_measurements_seqops;
 else
  chip->bin_log_seqops.seqops =
   &tpm1_binary_b_measurements_seqops;


 chip->bios_dir[cnt] =
     securityfs_create_file("binary_bios_measurements",
       0440, chip->bios_dir[0],
       (void *)&chip->bin_log_seqops,
       &tpm_bios_measurements_ops);
 if (IS_ERR(chip->bios_dir[cnt]))
  goto err;
 cnt++;

 if (!(chip->flags & TPM_CHIP_FLAG_TPM2)) {

  chip->ascii_log_seqops.chip = chip;
  chip->ascii_log_seqops.seqops =
   &tpm1_ascii_b_measurements_seqops;

  chip->bios_dir[cnt] =
   securityfs_create_file("ascii_bios_measurements",
            0440, chip->bios_dir[0],
            (void *)&chip->ascii_log_seqops,
            &tpm_bios_measurements_ops);
  if (IS_ERR(chip->bios_dir[cnt]))
   goto err;
  cnt++;
 }

 return 0;

err:
 rc = PTR_ERR(chip->bios_dir[cnt]);
 chip->bios_dir[cnt] = ((void*)0);
 tpm_bios_log_teardown(chip);
 return rc;
}
