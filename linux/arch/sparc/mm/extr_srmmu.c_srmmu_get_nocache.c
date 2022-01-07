
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* __srmmu_get_nocache (int,int) ;
 int memset (void*,int ,int) ;

void *srmmu_get_nocache(int size, int align)
{
 void *tmp;

 tmp = __srmmu_get_nocache(size, align);

 if (tmp)
  memset(tmp, 0, size);

 return tmp;
}
