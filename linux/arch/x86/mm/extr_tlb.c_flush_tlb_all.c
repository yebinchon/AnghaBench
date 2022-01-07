
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NR_TLB_REMOTE_FLUSH ;
 int count_vm_tlb_event (int ) ;
 int do_flush_tlb_all ;
 int on_each_cpu (int ,int *,int) ;

void flush_tlb_all(void)
{
 count_vm_tlb_event(NR_TLB_REMOTE_FLUSH);
 on_each_cpu(do_flush_tlb_all, ((void*)0), 1);
}
