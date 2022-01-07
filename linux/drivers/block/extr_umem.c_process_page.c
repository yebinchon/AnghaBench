
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int bi_size; } ;
struct mm_page {size_t headcnt; size_t cnt; struct bio* bio; TYPE_2__ iter; struct mm_dma_desc* desc; } ;
struct mm_dma_desc {int transfer_size; int local_addr; int data_dma_handle; int sem_control_bits; } ;
struct cardinfo {unsigned int dma_status; size_t Active; int init_size; int mm_size; int lock; scalar_t__ check_batteries; TYPE_1__* dev; struct mm_page* mm_pages; } ;
struct bio_vec {int bv_len; } ;
struct bio {struct bio* bi_next; int bi_status; TYPE_2__ bi_iter; } ;
struct TYPE_4__ {int dev; } ;


 int BLK_STS_IOERR ;
 int DEBUG_LED_ON_TRANSFER ;
 int DMASCR_DMA_COMPLETE ;
 int DMASCR_HARD_ERROR ;
 int DMASCR_TRANSFER_READ ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int KERN_INFO ;
 int KERN_WARNING ;
 int LED_OFF ;
 int LED_REMOVE ;
 int MEMORY_INITIALIZED ;
 int activate (struct cardinfo*) ;
 int bio_advance_iter (struct bio*,TYPE_2__*,int ) ;
 int bio_endio (struct bio*) ;
 struct bio_vec bio_iter_iovec (struct bio*,TYPE_2__) ;
 int bio_op (struct bio*) ;
 int check_batteries (struct cardinfo*) ;
 int debug ;
 int dev_printk (int ,int *,char*,...) ;
 int dma_unmap_page (int *,int ,int ,int ) ;
 int dump_dmastat (struct cardinfo*,int) ;
 int le32_to_cpu (int ) ;
 int mm_start_io (struct cardinfo*) ;
 scalar_t__ op_is_write (int ) ;
 int pr_debug (char*) ;
 int reset_page (struct mm_page*) ;
 int set_led (struct cardinfo*,int ,int ) ;
 int set_userbit (struct cardinfo*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void process_page(unsigned long data)
{






 struct mm_page *page;
 struct bio *return_bio = ((void*)0);
 struct cardinfo *card = (struct cardinfo *)data;
 unsigned int dma_status = card->dma_status;

 spin_lock(&card->lock);
 if (card->Active < 0)
  goto out_unlock;
 page = &card->mm_pages[card->Active];

 while (page->headcnt < page->cnt) {
  struct bio *bio = page->bio;
  struct mm_dma_desc *desc = &page->desc[page->headcnt];
  int control = le32_to_cpu(desc->sem_control_bits);
  int last = 0;
  struct bio_vec vec;

  if (!(control & DMASCR_DMA_COMPLETE)) {
   control = dma_status;
   last = 1;
  }

  page->headcnt++;
  vec = bio_iter_iovec(bio, page->iter);
  bio_advance_iter(bio, &page->iter, vec.bv_len);

  if (!page->iter.bi_size) {
   page->bio = bio->bi_next;
   if (page->bio)
    page->iter = page->bio->bi_iter;
  }

  dma_unmap_page(&card->dev->dev, desc->data_dma_handle,
          vec.bv_len,
     (control & DMASCR_TRANSFER_READ) ?
    DMA_TO_DEVICE : DMA_FROM_DEVICE);
  if (control & DMASCR_HARD_ERROR) {

   bio->bi_status = BLK_STS_IOERR;
   dev_printk(KERN_WARNING, &card->dev->dev,
    "I/O error on sector %d/%d\n",
    le32_to_cpu(desc->local_addr)>>9,
    le32_to_cpu(desc->transfer_size));
   dump_dmastat(card, control);
  } else if (op_is_write(bio_op(bio)) &&
      le32_to_cpu(desc->local_addr) >> 9 ==
    card->init_size) {
   card->init_size += le32_to_cpu(desc->transfer_size) >> 9;
   if (card->init_size >> 1 >= card->mm_size) {
    dev_printk(KERN_INFO, &card->dev->dev,
     "memory now initialised\n");
    set_userbit(card, MEMORY_INITIALIZED, 1);
   }
  }
  if (bio != page->bio) {
   bio->bi_next = return_bio;
   return_bio = bio;
  }

  if (last)
   break;
 }

 if (debug & DEBUG_LED_ON_TRANSFER)
  set_led(card, LED_REMOVE, LED_OFF);

 if (card->check_batteries) {
  card->check_batteries = 0;
  check_batteries(card);
 }
 if (page->headcnt >= page->cnt) {
  reset_page(page);
  card->Active = -1;
  activate(card);
 } else {

  pr_debug("do some more\n");
  mm_start_io(card);
 }
 out_unlock:
 spin_unlock(&card->lock);

 while (return_bio) {
  struct bio *bio = return_bio;

  return_bio = bio->bi_next;
  bio->bi_next = ((void*)0);
  bio_endio(bio);
 }
}
