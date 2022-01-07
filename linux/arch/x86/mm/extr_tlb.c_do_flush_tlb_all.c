
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NR_TLB_REMOTE_FLUSH_RECEIVED ;
 int __flush_tlb_all () ;
 int count_vm_tlb_event (int ) ;

__attribute__((used)) static void do_flush_tlb_all(void *info)
{
 count_vm_tlb_event(NR_TLB_REMOTE_FLUSH_RECEIVED);
 __flush_tlb_all();
}
