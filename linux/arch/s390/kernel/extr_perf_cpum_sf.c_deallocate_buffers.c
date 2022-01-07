
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sdbt; } ;
struct cpu_hw_sf {TYPE_1__ sfb; } ;


 int free_sampling_buffer (TYPE_1__*) ;

__attribute__((used)) static void deallocate_buffers(struct cpu_hw_sf *cpuhw)
{
 if (cpuhw->sfb.sdbt)
  free_sampling_buffer(&cpuhw->sfb);
}
