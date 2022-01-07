
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct TYPE_2__ {int size; } ;
struct pktcdvd_device {int flags; TYPE_1__ settings; } ;


 int CD_FRAMESIZE ;
 int EIO ;
 int PACKET_MERGE_SEGS ;
 int PAGE_SIZE ;
 int clear_bit (int ,int *) ;
 int pkt_err (struct pktcdvd_device*,char*) ;
 int queue_max_segments (struct request_queue*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int pkt_set_segment_merging(struct pktcdvd_device *pd, struct request_queue *q)
{
 if ((pd->settings.size << 9) / CD_FRAMESIZE
     <= queue_max_segments(q)) {



  clear_bit(PACKET_MERGE_SEGS, &pd->flags);
  return 0;
 } else if ((pd->settings.size << 9) / PAGE_SIZE
     <= queue_max_segments(q)) {




  set_bit(PACKET_MERGE_SEGS, &pd->flags);
  return 0;
 } else {
  pkt_err(pd, "cdrom max_phys_segments too small\n");
  return -EIO;
 }
}
