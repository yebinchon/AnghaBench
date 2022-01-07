
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sdbt; } ;
struct cpu_hw_sf {TYPE_1__ sfb; } ;



__attribute__((used)) static int sf_buffer_available(struct cpu_hw_sf *cpuhw)
{
 return !!cpuhw->sfb.sdbt;
}
