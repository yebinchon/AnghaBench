
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int L_PTE_RDONLY ;
 int __pgprot (int ) ;
 int change_memory_common (unsigned long,int,int ,int ) ;

int set_memory_ro(unsigned long addr, int numpages)
{
 return change_memory_common(addr, numpages,
     __pgprot(L_PTE_RDONLY),
     __pgprot(0));
}
