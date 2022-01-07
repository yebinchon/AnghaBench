
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pit_data {int dummy; } ;
struct clock_event_device {int dummy; } ;


 int at91sam926x_pit_reset (struct pit_data*) ;
 struct pit_data* clkevt_to_pit_data (struct clock_event_device*) ;

__attribute__((used)) static void at91sam926x_pit_resume(struct clock_event_device *cedev)
{
 struct pit_data *data = clkevt_to_pit_data(cedev);

 at91sam926x_pit_reset(data);
}
