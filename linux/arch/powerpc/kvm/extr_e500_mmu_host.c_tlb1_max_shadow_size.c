
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int entries; } ;


 TYPE_1__* host_tlb_params ;
 unsigned int tlbcam_index ;

__attribute__((used)) static inline unsigned int tlb1_max_shadow_size(void)
{

 return host_tlb_params[1].entries - tlbcam_index - 1;
}
