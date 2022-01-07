
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct atm_vcc {int * stats; struct atm_dev* dev_data; int flags; TYPE_2__* dev; } ;
struct atm_dev {int number; int * ops; } ;
struct TYPE_6__ {struct atm_vcc* vcc; } ;
struct TYPE_4__ {int aal5; } ;
struct TYPE_5__ {TYPE_1__ stats; } ;


 int ATM_VF_META ;
 int ATM_VF_READY ;
 int EBUSY ;
 int EMEDIUMTYPE ;
 TYPE_3__* PRIV (struct atm_dev*) ;
 struct atm_dev* atm_dev_lookup (int) ;
 int atm_dev_put (struct atm_dev*) ;
 int atm_init_aal5 (struct atm_vcc*) ;
 TYPE_2__ atmtcp_control_dev ;
 int atmtcp_create (int,int ,struct atm_dev**) ;
 int atmtcp_v_dev_ops ;
 int set_bit (int ,int *) ;
 int sk_atm (struct atm_vcc*) ;
 int vcc_insert_socket (int ) ;

__attribute__((used)) static int atmtcp_attach(struct atm_vcc *vcc,int itf)
{
 struct atm_dev *dev;

 dev = ((void*)0);
 if (itf != -1) dev = atm_dev_lookup(itf);
 if (dev) {
  if (dev->ops != &atmtcp_v_dev_ops) {
   atm_dev_put(dev);
   return -EMEDIUMTYPE;
  }
  if (PRIV(dev)->vcc) {
   atm_dev_put(dev);
   return -EBUSY;
  }
 }
 else {
  int error;

  error = atmtcp_create(itf,0,&dev);
  if (error) return error;
 }
 PRIV(dev)->vcc = vcc;
 vcc->dev = &atmtcp_control_dev;
 vcc_insert_socket(sk_atm(vcc));
 set_bit(ATM_VF_META,&vcc->flags);
 set_bit(ATM_VF_READY,&vcc->flags);
 vcc->dev_data = dev;
 (void) atm_init_aal5(vcc);
 vcc->stats = &atmtcp_control_dev.stats.aal5;
 return dev->number;
}
