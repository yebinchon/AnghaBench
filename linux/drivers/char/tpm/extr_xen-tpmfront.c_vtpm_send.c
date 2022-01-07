
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct vtpm_shared_page {size_t length; int state; } ;
struct tpm_private {int read_queue; int evtchn; struct vtpm_shared_page* shr; } ;
struct tpm_header {int ordinal; } ;
struct tpm_chip {unsigned long timeout_c; int dev; } ;


 int EINVAL ;
 int ETIME ;
 unsigned int PAGE_SIZE ;
 int VTPM_STATE_SUBMIT ;
 int VTPM_STATUS_IDLE ;
 int barrier () ;
 int be32_to_cpu (int ) ;
 struct tpm_private* dev_get_drvdata (int *) ;
 int memcpy (int *,int *,size_t) ;
 int notify_remote_via_evtchn (int ) ;
 unsigned int shr_data_offset (struct vtpm_shared_page*) ;
 unsigned long tpm_calc_ordinal_duration (struct tpm_chip*,int ) ;
 int vtpm_cancel (struct tpm_chip*) ;
 scalar_t__ wait_for_tpm_stat (struct tpm_chip*,int ,unsigned long,int *,int) ;
 int wmb () ;

__attribute__((used)) static int vtpm_send(struct tpm_chip *chip, u8 *buf, size_t count)
{
 struct tpm_private *priv = dev_get_drvdata(&chip->dev);
 struct vtpm_shared_page *shr = priv->shr;
 unsigned int offset = shr_data_offset(shr);

 u32 ordinal;
 unsigned long duration;

 if (offset > PAGE_SIZE)
  return -EINVAL;

 if (offset + count > PAGE_SIZE)
  return -EINVAL;


 if (wait_for_tpm_stat(chip, VTPM_STATUS_IDLE, chip->timeout_c,
   &priv->read_queue, 1) < 0) {
  vtpm_cancel(chip);
  return -ETIME;
 }

 memcpy(offset + (u8 *)shr, buf, count);
 shr->length = count;
 barrier();
 shr->state = VTPM_STATE_SUBMIT;
 wmb();
 notify_remote_via_evtchn(priv->evtchn);

 ordinal = be32_to_cpu(((struct tpm_header *)buf)->ordinal);
 duration = tpm_calc_ordinal_duration(chip, ordinal);

 if (wait_for_tpm_stat(chip, VTPM_STATUS_IDLE, duration,
   &priv->read_queue, 1) < 0) {

  vtpm_cancel(chip);
  return -ETIME;
 }

 return 0;
}
