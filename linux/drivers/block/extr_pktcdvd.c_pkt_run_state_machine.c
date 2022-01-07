
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pktcdvd_device {int dummy; } ;
struct packet_data {int state; TYPE_1__* w_bio; int io_wait; int io_errors; int sleep_time; int frames; int write_size; int id; } ;
struct TYPE_2__ {int bi_status; } ;


 int BUG () ;





 int atomic_read (int *) ;
 int pkt_dbg (int,struct pktcdvd_device*,char*,...) ;
 int pkt_finish_packet (struct packet_data*,int ) ;
 int pkt_gather_data (struct pktcdvd_device*,struct packet_data*) ;
 int pkt_set_state (struct packet_data*,int) ;
 int pkt_start_recovery (struct packet_data*) ;
 int pkt_start_write (struct pktcdvd_device*,struct packet_data*) ;

__attribute__((used)) static void pkt_run_state_machine(struct pktcdvd_device *pd, struct packet_data *pkt)
{
 pkt_dbg(2, pd, "pkt %d\n", pkt->id);

 for (;;) {
  switch (pkt->state) {
  case 129:
   if ((pkt->write_size < pkt->frames) && (pkt->sleep_time > 0))
    return;

   pkt->sleep_time = 0;
   pkt_gather_data(pd, pkt);
   pkt_set_state(pkt, 131);
   break;

  case 131:
   if (atomic_read(&pkt->io_wait) > 0)
    return;

   if (atomic_read(&pkt->io_errors) > 0) {
    pkt_set_state(pkt, 130);
   } else {
    pkt_start_write(pd, pkt);
   }
   break;

  case 128:
   if (atomic_read(&pkt->io_wait) > 0)
    return;

   if (!pkt->w_bio->bi_status) {
    pkt_set_state(pkt, 132);
   } else {
    pkt_set_state(pkt, 130);
   }
   break;

  case 130:
   if (pkt_start_recovery(pkt)) {
    pkt_start_write(pd, pkt);
   } else {
    pkt_dbg(2, pd, "No recovery possible\n");
    pkt_set_state(pkt, 132);
   }
   break;

  case 132:
   pkt_finish_packet(pkt, pkt->w_bio->bi_status);
   return;

  default:
   BUG();
   break;
  }
 }
}
