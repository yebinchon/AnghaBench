
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expansion_card {int claimed; } ;
struct ecard_id {int dummy; } ;
struct ecard_driver {int (* probe ) (struct expansion_card*,struct ecard_id const*) ;int id_table; } ;
struct device {int driver; } ;


 struct expansion_card* ECARD_DEV (struct device*) ;
 struct ecard_driver* ECARD_DRV (int ) ;
 struct ecard_id* ecard_match_device (int ,struct expansion_card*) ;
 int stub1 (struct expansion_card*,struct ecard_id const*) ;

__attribute__((used)) static int ecard_drv_probe(struct device *dev)
{
 struct expansion_card *ec = ECARD_DEV(dev);
 struct ecard_driver *drv = ECARD_DRV(dev->driver);
 const struct ecard_id *id;
 int ret;

 id = ecard_match_device(drv->id_table, ec);

 ec->claimed = 1;
 ret = drv->probe(ec, id);
 if (ret)
  ec->claimed = 0;
 return ret;
}
