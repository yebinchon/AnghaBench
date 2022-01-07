
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atm_dev {int * phy; } ;


 int DPRINTK (char*) ;
 int uPD98402_ops ;

int uPD98402_init(struct atm_dev *dev)
{
DPRINTK("phy_init\n");
 dev->phy = &uPD98402_ops;
 return 0;
}
