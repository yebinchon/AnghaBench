
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_data {int frames; struct bio* w_bio; scalar_t__* pages; struct bio** r_bios; int orig_bios; int lock; } ;
struct bio {int dummy; } ;


 int FRAMES_PER_PAGE ;
 int GFP_KERNEL ;
 int __GFP_ZERO ;
 int __free_page (scalar_t__) ;
 scalar_t__ alloc_page (int) ;
 void* bio_kmalloc (int,int) ;
 int bio_list_init (int *) ;
 int bio_put (struct bio*) ;
 int kfree (struct packet_data*) ;
 struct packet_data* kzalloc (int,int) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct packet_data *pkt_alloc_packet_data(int frames)
{
 int i;
 struct packet_data *pkt;

 pkt = kzalloc(sizeof(struct packet_data), GFP_KERNEL);
 if (!pkt)
  goto no_pkt;

 pkt->frames = frames;
 pkt->w_bio = bio_kmalloc(GFP_KERNEL, frames);
 if (!pkt->w_bio)
  goto no_bio;

 for (i = 0; i < frames / FRAMES_PER_PAGE; i++) {
  pkt->pages[i] = alloc_page(GFP_KERNEL|__GFP_ZERO);
  if (!pkt->pages[i])
   goto no_page;
 }

 spin_lock_init(&pkt->lock);
 bio_list_init(&pkt->orig_bios);

 for (i = 0; i < frames; i++) {
  struct bio *bio = bio_kmalloc(GFP_KERNEL, 1);
  if (!bio)
   goto no_rd_bio;

  pkt->r_bios[i] = bio;
 }

 return pkt;

no_rd_bio:
 for (i = 0; i < frames; i++) {
  struct bio *bio = pkt->r_bios[i];
  if (bio)
   bio_put(bio);
 }

no_page:
 for (i = 0; i < frames / FRAMES_PER_PAGE; i++)
  if (pkt->pages[i])
   __free_page(pkt->pages[i]);
 bio_put(pkt->w_bio);
no_bio:
 kfree(pkt);
no_pkt:
 return ((void*)0);
}
