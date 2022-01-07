
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vtpm_shared_page {size_t length; scalar_t__ state; } ;
struct tpm_private {int read_queue; struct vtpm_shared_page* shr; } ;
struct tpm_chip {int timeout_c; int dev; } ;


 int ECANCELED ;
 int EIO ;
 int ETIME ;
 unsigned int PAGE_SIZE ;
 scalar_t__ VTPM_STATE_IDLE ;
 int VTPM_STATUS_RESULT ;
 struct tpm_private* dev_get_drvdata (int *) ;
 int memcpy (int *,int *,size_t) ;
 unsigned int shr_data_offset (struct vtpm_shared_page*) ;
 int vtpm_cancel (struct tpm_chip*) ;
 scalar_t__ wait_for_tpm_stat (struct tpm_chip*,int ,int ,int *,int) ;

__attribute__((used)) static int vtpm_recv(struct tpm_chip *chip, u8 *buf, size_t count)
{
 struct tpm_private *priv = dev_get_drvdata(&chip->dev);
 struct vtpm_shared_page *shr = priv->shr;
 unsigned int offset = shr_data_offset(shr);
 size_t length = shr->length;

 if (shr->state == VTPM_STATE_IDLE)
  return -ECANCELED;


 if (wait_for_tpm_stat(chip, VTPM_STATUS_RESULT, chip->timeout_c,
   &priv->read_queue, 1) < 0) {
  vtpm_cancel(chip);
  return -ETIME;
 }

 if (offset > PAGE_SIZE)
  return -EIO;

 if (offset + length > PAGE_SIZE)
  length = PAGE_SIZE - offset;

 if (length > count)
  length = count;

 memcpy(buf, offset + (u8 *)shr, length);

 return length;
}
