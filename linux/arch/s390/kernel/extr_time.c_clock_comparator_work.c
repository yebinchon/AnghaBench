
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clock_event_device {int (* event_handler ) (struct clock_event_device*) ;} ;
struct TYPE_2__ {int clock_comparator; } ;


 TYPE_1__ S390_lowcore ;
 int clock_comparator_max ;
 int comparators ;
 int stub1 (struct clock_event_device*) ;
 struct clock_event_device* this_cpu_ptr (int *) ;

void clock_comparator_work(void)
{
 struct clock_event_device *cd;

 S390_lowcore.clock_comparator = clock_comparator_max;
 cd = this_cpu_ptr(&comparators);
 cd->event_handler(cd);
}
