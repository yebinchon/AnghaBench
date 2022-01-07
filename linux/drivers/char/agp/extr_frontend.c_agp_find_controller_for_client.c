
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct agp_controller {struct agp_controller* next; } ;
typedef int pid_t ;
struct TYPE_2__ {struct agp_controller* controllers; } ;


 TYPE_1__ agp_fe ;
 int * agp_find_client_in_controller (struct agp_controller*,int ) ;

__attribute__((used)) static struct agp_controller *agp_find_controller_for_client(pid_t id)
{
 struct agp_controller *controller;

 controller = agp_fe.controllers;

 while (controller != ((void*)0)) {
  if ((agp_find_client_in_controller(controller, id)) != ((void*)0))
   return controller;
  controller = controller->next;
 }

 return ((void*)0);
}
