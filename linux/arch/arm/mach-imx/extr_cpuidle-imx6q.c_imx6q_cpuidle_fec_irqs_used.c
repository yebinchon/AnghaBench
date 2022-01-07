
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* states; } ;
struct TYPE_3__ {int disabled; } ;


 TYPE_2__ imx6q_cpuidle_driver ;

void imx6q_cpuidle_fec_irqs_used(void)
{
 imx6q_cpuidle_driver.states[1].disabled = 1;
}
