
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct admhcd {int dummy; } ;
struct TYPE_2__ {int state; } ;


 int HC_STATE_HALT ;
 TYPE_1__* admhcd_to_hcd (struct admhcd*) ;

__attribute__((used)) static inline void admhc_disable(struct admhcd *ahcd)
{
 admhcd_to_hcd(ahcd)->state = HC_STATE_HALT;
}
