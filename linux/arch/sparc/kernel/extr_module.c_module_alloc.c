
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memset (void*,int ,unsigned long) ;
 void* module_map (unsigned long) ;

void *module_alloc(unsigned long size)
{
 void *ret;

 ret = module_map(size);
 if (ret)
  memset(ret, 0, size);

 return ret;
}
