
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int attention; } ;
struct TYPE_3__ {int pending_bios; } ;
struct pktcdvd_device {int wqueue; TYPE_2__ iosched; TYPE_1__ cdrw; } ;


 int BUG_ON (int) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int) ;
 int pkt_dbg (int,struct pktcdvd_device*,char*) ;
 int wake_up (int *) ;

__attribute__((used)) static void pkt_bio_finished(struct pktcdvd_device *pd)
{
 BUG_ON(atomic_read(&pd->cdrw.pending_bios) <= 0);
 if (atomic_dec_and_test(&pd->cdrw.pending_bios)) {
  pkt_dbg(2, pd, "queue empty\n");
  atomic_set(&pd->iosched.attention, 1);
  wake_up(&pd->wqueue);
 }
}
