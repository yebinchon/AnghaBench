
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int label; } ;
struct mcu {TYPE_1__ gc; } ;


 int gpiochip_remove (TYPE_1__*) ;
 int kfree (int ) ;

__attribute__((used)) static int mcu_gpiochip_remove(struct mcu *mcu)
{
 kfree(mcu->gc.label);
 gpiochip_remove(&mcu->gc);
 return 0;
}
