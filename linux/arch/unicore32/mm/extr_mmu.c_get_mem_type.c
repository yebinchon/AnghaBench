
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_type {int dummy; } ;


 unsigned int ARRAY_SIZE (struct mem_type const*) ;
 struct mem_type const* mem_types ;

const struct mem_type *get_mem_type(unsigned int type)
{
 return type < ARRAY_SIZE(mem_types) ? &mem_types[type] : ((void*)0);
}
