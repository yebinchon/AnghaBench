
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_2__ {int valid; } ;


 int ENODEV ;
 TYPE_1__* clock ;
 size_t clock_max_idx ;

__attribute__((used)) static inline int zynqmp_is_valid_clock(u32 clk_id)
{
 if (clk_id >= clock_max_idx)
  return -ENODEV;

 return clock[clk_id].valid;
}
