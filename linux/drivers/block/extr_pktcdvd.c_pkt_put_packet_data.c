
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pkt_free_list; } ;
struct pktcdvd_device {TYPE_1__ cdrw; } ;
struct packet_data {int list; scalar_t__ cache_valid; } ;


 int list_add (int *,int *) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static void pkt_put_packet_data(struct pktcdvd_device *pd, struct packet_data *pkt)
{
 if (pkt->cache_valid) {
  list_add(&pkt->list, &pd->cdrw.pkt_free_list);
 } else {
  list_add_tail(&pkt->list, &pd->cdrw.pkt_free_list);
 }
}
