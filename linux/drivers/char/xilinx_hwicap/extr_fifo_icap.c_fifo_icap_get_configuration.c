
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct hwicap_drvdata {int dev; } ;


 int EBUSY ;
 int EIO ;
 scalar_t__ XHI_MAX_READ_TRANSACTION_WORDS ;
 scalar_t__ XHI_MAX_RETRIES ;
 int dev_dbg (int ,char*) ;
 scalar_t__ fifo_icap_busy (struct hwicap_drvdata*) ;
 int fifo_icap_fifo_read (struct hwicap_drvdata*) ;
 scalar_t__ fifo_icap_read_fifo_occupancy (struct hwicap_drvdata*) ;
 int fifo_icap_set_read_size (struct hwicap_drvdata*,scalar_t__) ;
 int fifo_icap_start_readback (struct hwicap_drvdata*) ;

int fifo_icap_get_configuration(struct hwicap_drvdata *drvdata,
  u32 *frame_buffer, u32 num_words)
{

 u32 read_fifo_occupancy = 0;
 u32 retries = 0;
 u32 *data = frame_buffer;
 u32 remaining_words;
 u32 words_to_read;

 dev_dbg(drvdata->dev, "fifo_get_configuration\n");




 if (fifo_icap_busy(drvdata))
  return -EBUSY;

 remaining_words = num_words;

 while (remaining_words > 0) {
  words_to_read = remaining_words;


  if (words_to_read > XHI_MAX_READ_TRANSACTION_WORDS)
   words_to_read = XHI_MAX_READ_TRANSACTION_WORDS;

  remaining_words -= words_to_read;

  fifo_icap_set_read_size(drvdata, words_to_read);
  fifo_icap_start_readback(drvdata);

  while (words_to_read > 0) {

   while (read_fifo_occupancy == 0) {
    read_fifo_occupancy =
     fifo_icap_read_fifo_occupancy(drvdata);
    retries++;
    if (retries > XHI_MAX_RETRIES)
     return -EIO;
   }

   if (read_fifo_occupancy > words_to_read)
    read_fifo_occupancy = words_to_read;

   words_to_read -= read_fifo_occupancy;


   while (read_fifo_occupancy != 0) {
    *data++ = fifo_icap_fifo_read(drvdata);
    read_fifo_occupancy--;
   }
  }
 }

 dev_dbg(drvdata->dev, "done fifo_get_configuration\n");

 return 0;
}
