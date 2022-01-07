
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_data {int orig_bios; scalar_t__ cache_valid; } ;
struct bio {scalar_t__ bi_status; } ;
typedef scalar_t__ blk_status_t ;


 int bio_endio (struct bio*) ;
 struct bio* bio_list_pop (int *) ;

__attribute__((used)) static void pkt_finish_packet(struct packet_data *pkt, blk_status_t status)
{
 struct bio *bio;

 if (status)
  pkt->cache_valid = 0;


 while ((bio = bio_list_pop(&pkt->orig_bios))) {
  bio->bi_status = status;
  bio_endio(bio);
 }
}
