
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ida_free (int *,int) ;
 int mmu_context_ida ;

void __destroy_context(int context_id)
{
 ida_free(&mmu_context_ida, context_id);
}
