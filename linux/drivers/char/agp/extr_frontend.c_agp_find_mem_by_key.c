
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct agp_memory {int key; struct agp_memory* next; } ;
struct TYPE_4__ {TYPE_1__* current_controller; } ;
struct TYPE_3__ {struct agp_memory* pool; } ;


 int DBG (char*,int,struct agp_memory*) ;
 TYPE_2__ agp_fe ;

struct agp_memory *agp_find_mem_by_key(int key)
{
 struct agp_memory *curr;

 if (agp_fe.current_controller == ((void*)0))
  return ((void*)0);

 curr = agp_fe.current_controller->pool;

 while (curr != ((void*)0)) {
  if (curr->key == key)
   break;
  curr = curr->next;
 }

 DBG("key=%d -> mem=%p", key, curr);
 return curr;
}
