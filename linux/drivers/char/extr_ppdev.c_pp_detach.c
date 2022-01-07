
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {size_t number; } ;


 int MKDEV (int ,size_t) ;
 int PP_MAJOR ;
 int device_destroy (int ,int ) ;
 int ** devices ;
 int ppdev_class ;

__attribute__((used)) static void pp_detach(struct parport *port)
{
 if (!devices[port->number])
  return;

 device_destroy(ppdev_class, MKDEV(PP_MAJOR, port->number));
 devices[port->number] = ((void*)0);
}
