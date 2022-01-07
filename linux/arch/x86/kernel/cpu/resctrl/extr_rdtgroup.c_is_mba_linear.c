
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int delay_linear; } ;
struct TYPE_4__ {TYPE_1__ membw; } ;


 size_t RDT_RESOURCE_MBA ;
 TYPE_2__* rdt_resources_all ;

__attribute__((used)) static inline bool is_mba_linear(void)
{
 return rdt_resources_all[RDT_RESOURCE_MBA].membw.delay_linear;
}
