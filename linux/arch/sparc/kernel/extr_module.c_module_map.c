
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* vmalloc (unsigned long) ;

__attribute__((used)) static void *module_map(unsigned long size)
{
 return vmalloc(size);
}
