
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 void* kzalloc (unsigned long,int ) ;
 int max_low_pfn ;
 int memset (void*,int ,unsigned long) ;
 void* pfn_to_kaddr (int ) ;

void *alloc_progmem(unsigned long len)
{
 void *addr;
 addr = kzalloc(len, GFP_KERNEL);


 return addr;
}
