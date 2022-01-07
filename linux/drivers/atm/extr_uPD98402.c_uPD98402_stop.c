
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atm_dev {int dummy; } ;


 int PRIV (struct atm_dev*) ;
 int kfree (int ) ;

__attribute__((used)) static int uPD98402_stop(struct atm_dev *dev)
{

 kfree(PRIV(dev));
 return 0;
}
