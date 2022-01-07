
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct slb_shadow {TYPE_1__* save_area; int persistent; } ;
struct TYPE_6__ {void* pinned_end; struct slb_shadow* pinned_addr; } ;
struct TYPE_5__ {TYPE_3__ slb_shadow; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_4__ {int vsid; int esid; } ;


 int SLB_MIN_SIZE ;
 int be32_to_cpu (int ) ;
 unsigned long be64_to_cpu (int ) ;
 unsigned long min_t (int ,int ,int ) ;
 int u32 ;

__attribute__((used)) static void reload_slb(struct kvm_vcpu *vcpu)
{
 struct slb_shadow *slb;
 unsigned long i, n;


 asm volatile("slbmte %0,%0; slbia" : : "r" (0));


 slb = vcpu->arch.slb_shadow.pinned_addr;
 if (!slb)
  return;


 n = min_t(u32, be32_to_cpu(slb->persistent), SLB_MIN_SIZE);
 if ((void *) &slb->save_area[n] > vcpu->arch.slb_shadow.pinned_end)
  return;


 for (i = 0; i < n; ++i) {
  unsigned long rb = be64_to_cpu(slb->save_area[i].esid);
  unsigned long rs = be64_to_cpu(slb->save_area[i].vsid);

  rb = (rb & ~0xFFFul) | i;
  asm volatile("slbmte %0,%1" : : "r" (rs), "r" (rb));
 }
}
