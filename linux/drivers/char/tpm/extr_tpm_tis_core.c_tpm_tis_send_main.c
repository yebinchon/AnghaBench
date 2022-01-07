
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct tpm_tis_data {int read_queue; int locality; } ;
struct tpm_chip {int flags; int dev; } ;
typedef int __be32 ;


 int ETIME ;
 int TPM_CHIP_FLAG_IRQ ;
 int TPM_STS (int ) ;
 int TPM_STS_DATA_AVAIL ;
 int TPM_STS_GO ;
 int TPM_STS_VALID ;
 int be32_to_cpu (int ) ;
 struct tpm_tis_data* dev_get_drvdata (int *) ;
 unsigned long tpm_calc_ordinal_duration (struct tpm_chip*,int ) ;
 int tpm_tis_ready (struct tpm_chip*) ;
 int tpm_tis_send_data (struct tpm_chip*,int const*,size_t) ;
 int tpm_tis_write8 (struct tpm_tis_data*,int ,int ) ;
 scalar_t__ wait_for_tpm_stat (struct tpm_chip*,int,unsigned long,int *,int) ;

__attribute__((used)) static int tpm_tis_send_main(struct tpm_chip *chip, const u8 *buf, size_t len)
{
 struct tpm_tis_data *priv = dev_get_drvdata(&chip->dev);
 int rc;
 u32 ordinal;
 unsigned long dur;

 rc = tpm_tis_send_data(chip, buf, len);
 if (rc < 0)
  return rc;


 rc = tpm_tis_write8(priv, TPM_STS(priv->locality), TPM_STS_GO);
 if (rc < 0)
  goto out_err;

 if (chip->flags & TPM_CHIP_FLAG_IRQ) {
  ordinal = be32_to_cpu(*((__be32 *) (buf + 6)));

  dur = tpm_calc_ordinal_duration(chip, ordinal);
  if (wait_for_tpm_stat
      (chip, TPM_STS_DATA_AVAIL | TPM_STS_VALID, dur,
       &priv->read_queue, 0) < 0) {
   rc = -ETIME;
   goto out_err;
  }
 }
 return 0;
out_err:
 tpm_tis_ready(chip);
 return rc;
}
