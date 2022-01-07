
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct agp_controller {struct agp_controller* prev; struct agp_controller* next; } ;
struct TYPE_2__ {int backend_acquired; struct agp_controller* current_controller; struct agp_controller* controllers; } ;


 int agp_backend_release (int ) ;
 int agp_bridge ;
 TYPE_1__ agp_fe ;
 int agp_remove_all_clients (struct agp_controller*) ;
 int agp_remove_all_memory (struct agp_controller*) ;
 int kfree (struct agp_controller*) ;

__attribute__((used)) static int agp_remove_controller(struct agp_controller *controller)
{
 struct agp_controller *prev_controller;
 struct agp_controller *next_controller;

 prev_controller = controller->prev;
 next_controller = controller->next;

 if (prev_controller != ((void*)0)) {
  prev_controller->next = next_controller;
  if (next_controller != ((void*)0))
   next_controller->prev = prev_controller;

 } else {
  if (next_controller != ((void*)0))
   next_controller->prev = ((void*)0);

  agp_fe.controllers = next_controller;
 }

 agp_remove_all_memory(controller);
 agp_remove_all_clients(controller);

 if (agp_fe.current_controller == controller) {
  agp_fe.current_controller = ((void*)0);
  agp_fe.backend_acquired = 0;
  agp_backend_release(agp_bridge);
 }
 kfree(controller);
 return 0;
}
