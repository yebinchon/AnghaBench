
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amba_id {struct amba_cs_uci_id* data; } ;
struct TYPE_2__ {scalar_t__ devtype; int devarch; } ;
struct amba_device {TYPE_1__ uci; } ;
struct amba_cs_uci_id {int devarch_mask; scalar_t__ devtype; int devarch; } ;



__attribute__((used)) static int
amba_cs_uci_id_match(const struct amba_id *table, struct amba_device *dev)
{
 int ret = 0;
 struct amba_cs_uci_id *uci;

 uci = table->data;


 if (!uci || (uci->devarch_mask == 0))
  return 1;


 ret = (dev->uci.devtype == uci->devtype) &&
  ((dev->uci.devarch & uci->devarch_mask) == uci->devarch);
 return ret;
}
