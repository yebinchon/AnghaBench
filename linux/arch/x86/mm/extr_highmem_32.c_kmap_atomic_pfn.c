
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* kmap_atomic_prot_pfn (unsigned long,int ) ;
 int kmap_prot ;

void *kmap_atomic_pfn(unsigned long pfn)
{
 return kmap_atomic_prot_pfn(pfn, kmap_prot);
}
