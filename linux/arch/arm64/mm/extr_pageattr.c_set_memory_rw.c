
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PTE_RDONLY ;
 int PTE_WRITE ;
 int __pgprot (int ) ;
 int change_memory_common (unsigned long,int,int ,int ) ;

int set_memory_rw(unsigned long addr, int numpages)
{
 return change_memory_common(addr, numpages,
     __pgprot(PTE_WRITE),
     __pgprot(PTE_RDONLY));
}
