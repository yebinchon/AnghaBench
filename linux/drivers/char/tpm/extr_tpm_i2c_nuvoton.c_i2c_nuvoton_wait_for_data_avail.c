
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;
typedef int u32 ;
struct tpm_chip {int dummy; } ;


 int TPM_STS_DATA_AVAIL ;
 int TPM_STS_VALID ;
 int i2c_nuvoton_wait_for_stat (struct tpm_chip*,int,int,int ,int *) ;

__attribute__((used)) static int i2c_nuvoton_wait_for_data_avail(struct tpm_chip *chip, u32 timeout,
        wait_queue_head_t *queue)
{
 return i2c_nuvoton_wait_for_stat(chip,
      TPM_STS_DATA_AVAIL | TPM_STS_VALID,
      TPM_STS_DATA_AVAIL | TPM_STS_VALID,
      timeout, queue);
}
