
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opal_step {int member_0; } ;
struct opal_dev {int dummy; } ;


 int execute_step (struct opal_dev*,struct opal_step const*,int ) ;
 int opal_discovery0 ;

__attribute__((used)) static int opal_discovery0_step(struct opal_dev *dev)
{
 const struct opal_step discovery0_step = {
  opal_discovery0,
 };

 return execute_step(dev, &discovery0_step, 0);
}
