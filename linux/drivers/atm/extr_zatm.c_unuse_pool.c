
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct atm_dev {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pool_info; } ;
struct TYPE_3__ {int ref_count; } ;


 TYPE_2__* ZATM_DEV (struct atm_dev*) ;
 int drain_free (struct atm_dev*,int) ;

__attribute__((used)) static void unuse_pool(struct atm_dev *dev,int pool)
{
 if (!(--ZATM_DEV(dev)->pool_info[pool].ref_count))
  drain_free(dev,pool);
}
