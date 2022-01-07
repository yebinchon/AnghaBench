
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PGDIR_MASK ;
 int VMALLOC_END ;
 int VMALLOC_START ;
 int sync_global_pgds (int,int ) ;

void vmalloc_sync_all(void)
{
 sync_global_pgds(VMALLOC_START & PGDIR_MASK, VMALLOC_END);
}
