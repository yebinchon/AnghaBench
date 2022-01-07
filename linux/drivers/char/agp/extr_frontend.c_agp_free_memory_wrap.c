
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_memory {int dummy; } ;


 int agp_free_memory (struct agp_memory*) ;
 int agp_remove_from_pool (struct agp_memory*) ;

void agp_free_memory_wrap(struct agp_memory *memory)
{
 agp_remove_from_pool(memory);
 agp_free_memory(memory);
}
