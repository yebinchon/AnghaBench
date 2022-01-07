
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct hwicap_drvdata {int dev; } ;


 int EBUSY ;
 int EIO ;
 scalar_t__ XHI_MAX_RETRIES ;
 int dev_dbg (int ,char*) ;
 scalar_t__ fifo_icap_busy (struct hwicap_drvdata*) ;
 int fifo_icap_fifo_write (struct hwicap_drvdata*,scalar_t__) ;
 int fifo_icap_start_config (struct hwicap_drvdata*) ;
 scalar_t__ fifo_icap_write_fifo_vacancy (struct hwicap_drvdata*) ;

int fifo_icap_set_configuration(struct hwicap_drvdata *drvdata,
  u32 *frame_buffer, u32 num_words)
{

 u32 write_fifo_vacancy = 0;
 u32 retries = 0;
 u32 remaining_words;

 dev_dbg(drvdata->dev, "fifo_set_configuration\n");




 if (fifo_icap_busy(drvdata))
  return -EBUSY;




 remaining_words = num_words;

 while (remaining_words > 0) {



  while (write_fifo_vacancy == 0) {
   write_fifo_vacancy =
    fifo_icap_write_fifo_vacancy(drvdata);
   retries++;
   if (retries > XHI_MAX_RETRIES)
    return -EIO;
  }




  while ((write_fifo_vacancy != 0) &&
    (remaining_words > 0)) {
   fifo_icap_fifo_write(drvdata, *frame_buffer);

   remaining_words--;
   write_fifo_vacancy--;
   frame_buffer++;
  }

  fifo_icap_start_config(drvdata);
 }


 while (fifo_icap_busy(drvdata)) {
  retries++;
  if (retries > XHI_MAX_RETRIES)
   break;
 }

 dev_dbg(drvdata->dev, "done fifo_set_configuration\n");





 if (remaining_words != 0)
  return -EIO;

 return 0;
}
