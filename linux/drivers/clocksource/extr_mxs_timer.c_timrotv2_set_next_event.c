
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 scalar_t__ HW_TIMROT_FIXED_COUNTn (int ) ;
 int __raw_writel (unsigned long,scalar_t__) ;
 scalar_t__ mxs_timrot_base ;

__attribute__((used)) static int timrotv2_set_next_event(unsigned long evt,
     struct clock_event_device *dev)
{

 __raw_writel(evt, mxs_timrot_base + HW_TIMROT_FIXED_COUNTn(0));

 return 0;
}
