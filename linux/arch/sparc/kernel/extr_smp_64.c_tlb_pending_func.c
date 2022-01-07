
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlb_pending_info {int vaddrs; int nr; int ctx; } ;


 int __flush_tlb_pending (int ,int ,int ) ;

__attribute__((used)) static void tlb_pending_func(void *info)
{
 struct tlb_pending_info *t = info;

 __flush_tlb_pending(t->ctx, t->nr, t->vaddrs);
}
