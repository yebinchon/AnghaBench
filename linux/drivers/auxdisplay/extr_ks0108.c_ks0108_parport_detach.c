
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {scalar_t__ base; } ;


 int KS0108_NAME ;
 int * ks0108_pardevice ;
 int * ks0108_parport ;
 scalar_t__ ks0108_port ;
 int parport_release (int *) ;
 int parport_unregister_device (int *) ;
 int pr_err (char*,int ) ;

__attribute__((used)) static void ks0108_parport_detach(struct parport *port)
{
 if (port->base != ks0108_port)
  return;

 if (!ks0108_pardevice) {
  pr_err("%s: already unregistered.\n", KS0108_NAME);
  return;
 }

 parport_release(ks0108_pardevice);
 parport_unregister_device(ks0108_pardevice);
 ks0108_pardevice = ((void*)0);
 ks0108_parport = ((void*)0);
}
