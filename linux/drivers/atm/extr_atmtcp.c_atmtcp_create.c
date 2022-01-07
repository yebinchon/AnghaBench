
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct atmtcp_dev_data {int dummy; } ;
struct TYPE_3__ {int vci_bits; int vpi_bits; } ;
struct atm_dev {struct atmtcp_dev_data* dev_data; TYPE_1__ ci_range; } ;
struct TYPE_4__ {int persist; int * vcc; } ;


 int DEV_LABEL ;
 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_VCI_BITS ;
 int MAX_VPI_BITS ;
 TYPE_2__* PRIV (struct atm_dev*) ;
 struct atm_dev* atm_dev_register (int ,int *,int *,int,int *) ;
 int atmtcp_v_dev_ops ;
 int kfree (struct atmtcp_dev_data*) ;
 struct atmtcp_dev_data* kmalloc (int,int ) ;

__attribute__((used)) static int atmtcp_create(int itf,int persist,struct atm_dev **result)
{
 struct atmtcp_dev_data *dev_data;
 struct atm_dev *dev;

 dev_data = kmalloc(sizeof(*dev_data),GFP_KERNEL);
 if (!dev_data)
  return -ENOMEM;

 dev = atm_dev_register(DEV_LABEL,((void*)0),&atmtcp_v_dev_ops,itf,((void*)0));
 if (!dev) {
  kfree(dev_data);
  return itf == -1 ? -ENOMEM : -EBUSY;
 }
 dev->ci_range.vpi_bits = MAX_VPI_BITS;
 dev->ci_range.vci_bits = MAX_VCI_BITS;
 dev->dev_data = dev_data;
 PRIV(dev)->vcc = ((void*)0);
 PRIV(dev)->persist = persist;
 if (result) *result = dev;
 return 0;
}
