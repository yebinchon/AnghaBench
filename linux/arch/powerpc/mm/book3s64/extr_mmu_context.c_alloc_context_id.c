
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 int ida_alloc_range (int *,int,int,int ) ;
 int mmu_context_ida ;

__attribute__((used)) static int alloc_context_id(int min_id, int max_id)
{
 return ida_alloc_range(&mmu_context_ida, min_id, max_id, GFP_KERNEL);
}
