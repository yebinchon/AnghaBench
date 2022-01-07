
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_controller {int pid; } ;
typedef int pid_t ;


 int GFP_KERNEL ;
 struct agp_controller* kzalloc (int,int ) ;

__attribute__((used)) static struct agp_controller *agp_create_controller(pid_t id)
{
 struct agp_controller *controller;

 controller = kzalloc(sizeof(struct agp_controller), GFP_KERNEL);
 if (controller == ((void*)0))
  return ((void*)0);

 controller->pid = id;
 return controller;
}
