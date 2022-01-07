
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (void*,void const*,unsigned int) ;

void jent_memcpy(void *dest, const void *src, unsigned int n)
{
 memcpy(dest, src, n);
}
