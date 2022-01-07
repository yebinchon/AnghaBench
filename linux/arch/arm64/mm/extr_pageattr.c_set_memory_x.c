
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PTE_PXN ;
 int __pgprot (int ) ;
 int change_memory_common (unsigned long,int,int ,int ) ;

int set_memory_x(unsigned long addr, int numpages)
{
 return change_memory_common(addr, numpages,
     __pgprot(0),
     __pgprot(PTE_PXN));
}
