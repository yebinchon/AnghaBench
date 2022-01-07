
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {scalar_t__ base; } ;
struct pardev_cb {int flags; } ;
typedef int ks0108_cb ;


 int KS0108_NAME ;
 int PARPORT_DEV_EXCL ;
 int ks0108_inited ;
 int * ks0108_pardevice ;
 struct parport* ks0108_parport ;
 scalar_t__ ks0108_port ;
 int memset (struct pardev_cb*,int ,int) ;
 scalar_t__ parport_claim (int *) ;
 int * parport_register_dev_model (struct parport*,int ,struct pardev_cb*,int ) ;
 int parport_unregister_device (int *) ;
 int pr_err (char*,...) ;

__attribute__((used)) static void ks0108_parport_attach(struct parport *port)
{
 struct pardev_cb ks0108_cb;

 if (port->base != ks0108_port)
  return;

 memset(&ks0108_cb, 0, sizeof(ks0108_cb));
 ks0108_cb.flags = PARPORT_DEV_EXCL;
 ks0108_pardevice = parport_register_dev_model(port, KS0108_NAME,
            &ks0108_cb, 0);
 if (!ks0108_pardevice) {
  pr_err("ERROR: parport didn't register new device\n");
  return;
 }
 if (parport_claim(ks0108_pardevice)) {
  pr_err("could not claim access to parport %i. Aborting.\n",
         ks0108_port);
  goto err_unreg_device;
 }

 ks0108_parport = port;
 ks0108_inited = 1;
 return;

err_unreg_device:
 parport_unregister_device(ks0108_pardevice);
 ks0108_pardevice = ((void*)0);
}
