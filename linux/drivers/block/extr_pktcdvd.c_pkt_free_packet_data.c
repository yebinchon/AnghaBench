
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_data {int frames; struct bio* w_bio; int * pages; struct bio** r_bios; } ;
struct bio {int dummy; } ;


 int FRAMES_PER_PAGE ;
 int __free_page (int ) ;
 int bio_put (struct bio*) ;
 int kfree (struct packet_data*) ;

__attribute__((used)) static void pkt_free_packet_data(struct packet_data *pkt)
{
 int i;

 for (i = 0; i < pkt->frames; i++) {
  struct bio *bio = pkt->r_bios[i];
  if (bio)
   bio_put(bio);
 }
 for (i = 0; i < pkt->frames / FRAMES_PER_PAGE; i++)
  __free_page(pkt->pages[i]);
 bio_put(pkt->w_bio);
 kfree(pkt);
}
