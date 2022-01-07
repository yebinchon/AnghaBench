
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pkt_free_list; } ;
struct TYPE_4__ {int size; } ;
struct pktcdvd_device {TYPE_1__ cdrw; TYPE_2__ settings; } ;
struct packet_data {int id; int list; struct pktcdvd_device* pd; } ;


 int BUG_ON (int) ;
 int list_add (int *,int *) ;
 int list_empty (int *) ;
 struct packet_data* pkt_alloc_packet_data (int) ;
 int pkt_shrink_pktlist (struct pktcdvd_device*) ;

__attribute__((used)) static int pkt_grow_pktlist(struct pktcdvd_device *pd, int nr_packets)
{
 struct packet_data *pkt;

 BUG_ON(!list_empty(&pd->cdrw.pkt_free_list));

 while (nr_packets > 0) {
  pkt = pkt_alloc_packet_data(pd->settings.size >> 2);
  if (!pkt) {
   pkt_shrink_pktlist(pd);
   return 0;
  }
  pkt->id = nr_packets;
  pkt->pd = pd;
  list_add(&pkt->list, &pd->cdrw.pkt_free_list);
  nr_packets--;
 }
 return 1;
}
