
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UM_GFP_KERNEL ;
 void* uml_kmalloc (int,int ) ;

__attribute__((used)) static inline void *cow_malloc(int size)
{
 return uml_kmalloc(size, UM_GFP_KERNEL);
}
