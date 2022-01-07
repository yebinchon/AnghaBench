
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 int WARN (int,char*,int,int) ;
 int ida_alloc_range (int *,int,int,int ) ;
 int mmu_context_ida ;

void hash__reserve_context_id(int id)
{
 int result = ida_alloc_range(&mmu_context_ida, id, id, GFP_KERNEL);

 WARN(result != id, "mmu: Failed to reserve context id %d (rc %d)\n", id, result);
}
