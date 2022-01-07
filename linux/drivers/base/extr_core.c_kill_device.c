
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {TYPE_1__* p; int mutex; } ;
struct TYPE_2__ {int dead; } ;


 int lockdep_assert_held (int *) ;

bool kill_device(struct device *dev)
{







 lockdep_assert_held(&dev->mutex);

 if (dev->p->dead)
  return 0;
 dev->p->dead = 1;
 return 1;
}
