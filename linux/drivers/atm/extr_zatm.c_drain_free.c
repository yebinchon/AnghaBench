
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct atm_dev {int dummy; } ;
struct TYPE_2__ {int * pool; } ;


 TYPE_1__* ZATM_DEV (struct atm_dev*) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static void drain_free(struct atm_dev *dev,int pool)
{
 skb_queue_purge(&ZATM_DEV(dev)->pool[pool]);
}
