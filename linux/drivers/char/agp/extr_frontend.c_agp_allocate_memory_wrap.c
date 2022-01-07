
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct agp_memory {int dummy; } ;


 struct agp_memory* agp_allocate_memory (int ,size_t,int ) ;
 int agp_bridge ;
 int agp_insert_into_pool (struct agp_memory*) ;

struct agp_memory *agp_allocate_memory_wrap(size_t pg_count, u32 type)
{
 struct agp_memory *memory;

 memory = agp_allocate_memory(agp_bridge, pg_count, type);
 if (memory == ((void*)0))
  return ((void*)0);

 agp_insert_into_pool(memory);
 return memory;
}
