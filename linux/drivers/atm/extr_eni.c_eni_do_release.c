
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eni_dev {int ioaddr; } ;
struct atm_dev {TYPE_1__* phy; } ;
struct TYPE_2__ {int (* stop ) (struct atm_dev*) ;} ;


 struct eni_dev* ENI_DEV (struct atm_dev*) ;
 int iounmap (int ) ;
 int stub1 (struct atm_dev*) ;

__attribute__((used)) static void eni_do_release(struct atm_dev *dev)
{
 struct eni_dev *ed = ENI_DEV(dev);

 dev->phy->stop(dev);
 dev->phy = ((void*)0);
 iounmap(ed->ioaddr);
}
