
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmtcp_dev_data {scalar_t__ persist; int * vcc; } ;
struct atm_vcc {int * dev_data; } ;
struct atm_dev {int * dev_data; } ;


 struct atmtcp_dev_data* PRIV (struct atm_dev*) ;
 int THIS_MODULE ;
 int atm_dev_deregister (struct atm_dev*) ;
 int kfree (struct atmtcp_dev_data*) ;
 int module_put (int ) ;

__attribute__((used)) static void atmtcp_c_close(struct atm_vcc *vcc)
{
 struct atm_dev *atmtcp_dev;
 struct atmtcp_dev_data *dev_data;

 atmtcp_dev = (struct atm_dev *) vcc->dev_data;
 dev_data = PRIV(atmtcp_dev);
 dev_data->vcc = ((void*)0);
 if (dev_data->persist) return;
 atmtcp_dev->dev_data = ((void*)0);
 kfree(dev_data);
 atm_dev_deregister(atmtcp_dev);
 vcc->dev_data = ((void*)0);
 module_put(THIS_MODULE);
}
