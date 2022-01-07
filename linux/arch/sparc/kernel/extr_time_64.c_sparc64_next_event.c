
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clock_event_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ (* add_compare ) (unsigned long) ;} ;


 int ETIME ;
 scalar_t__ stub1 (unsigned long) ;
 TYPE_1__ tick_operations ;

__attribute__((used)) static int sparc64_next_event(unsigned long delta,
         struct clock_event_device *evt)
{
 return tick_operations.add_compare(delta) ? -ETIME : 0;
}
