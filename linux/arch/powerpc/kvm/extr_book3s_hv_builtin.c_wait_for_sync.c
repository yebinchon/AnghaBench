
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int* phase; int allphases; } ;
struct kvm_split_mode {TYPE_2__ lpcr_sync; } ;
struct TYPE_4__ {int tid; } ;
struct TYPE_6__ {TYPE_1__ kvm_hstate; } ;


 int ALL (int) ;
 int HMT_low () ;
 int HMT_medium () ;
 int barrier () ;
 TYPE_3__* local_paca ;

__attribute__((used)) static void wait_for_sync(struct kvm_split_mode *sip, int phase)
{
 int thr = local_paca->kvm_hstate.tid;

 sip->lpcr_sync.phase[thr] |= phase;
 phase = ALL(phase);
 while ((sip->lpcr_sync.allphases & phase) != phase) {
  HMT_low();
  barrier();
 }
 HMT_medium();
}
