
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tpm_space {int * session_buf; int * context_buf; int session_tbl; int context_tbl; } ;
struct TYPE_2__ {int * session_buf; int * context_buf; int session_tbl; int context_tbl; } ;
struct tpm_chip {int last_cc; TYPE_1__ work_space; } ;


 int PAGE_SIZE ;
 int memcpy (int *,int *,int) ;
 int tpm2_flush_space (struct tpm_chip*) ;
 int tpm2_load_space (struct tpm_chip*) ;
 int tpm2_map_command (struct tpm_chip*,int,int *) ;
 int tpm_find_and_validate_cc (struct tpm_chip*,struct tpm_space*,int *,size_t) ;

int tpm2_prepare_space(struct tpm_chip *chip, struct tpm_space *space, u8 *cmd,
         size_t cmdsiz)
{
 int rc;
 int cc;

 if (!space)
  return 0;

 cc = tpm_find_and_validate_cc(chip, space, cmd, cmdsiz);
 if (cc < 0)
  return cc;

 memcpy(&chip->work_space.context_tbl, &space->context_tbl,
        sizeof(space->context_tbl));
 memcpy(&chip->work_space.session_tbl, &space->session_tbl,
        sizeof(space->session_tbl));
 memcpy(chip->work_space.context_buf, space->context_buf, PAGE_SIZE);
 memcpy(chip->work_space.session_buf, space->session_buf, PAGE_SIZE);

 rc = tpm2_load_space(chip);
 if (rc) {
  tpm2_flush_space(chip);
  return rc;
 }

 rc = tpm2_map_command(chip, cc, cmd);
 if (rc) {
  tpm2_flush_space(chip);
  return rc;
 }

 chip->last_cc = cc;
 return 0;
}
