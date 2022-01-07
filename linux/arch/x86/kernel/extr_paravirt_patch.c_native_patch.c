
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int vcpu_is_preempted; int queued_spin_unlock; } ;


 int PARAVIRT_PATCH (int ) ;
 unsigned int PATCH (TYPE_1__,int ,void*,unsigned int) ;
 int PATCH_CASE (int ,int ,int ,void*,unsigned int) ;
 int cpu ;
 int iret ;
 int irq ;
 int irq_disable ;
 int irq_enable ;
 TYPE_1__ lock ;
 int mmu ;
 unsigned int paravirt_patch_default (int,void*,unsigned long,unsigned int) ;
 int pv_is_native_spin_unlock () ;
 int pv_is_native_vcpu_is_preempted () ;
 int queued_spin_unlock ;
 int read_cr2 ;
 int read_cr3 ;
 int restore_fl ;
 int save_fl ;
 int swapgs ;
 int usergs_sysret64 ;
 int vcpu_is_preempted ;
 int wbinvd ;
 int write_cr3 ;
 int xxl ;

unsigned int native_patch(u8 type, void *insn_buff, unsigned long addr,
     unsigned int len)
{
 switch (type) {
 default:
  break;
 }

 return paravirt_patch_default(type, insn_buff, addr, len);
}
