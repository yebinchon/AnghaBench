
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pit_data {int base; } ;
struct clock_event_device {int dummy; } ;


 int AT91_PIT_MR ;
 struct pit_data* clkevt_to_pit_data (struct clock_event_device*) ;
 int pit_write (int ,int ,int ) ;

__attribute__((used)) static void at91sam926x_pit_suspend(struct clock_event_device *cedev)
{
 struct pit_data *data = clkevt_to_pit_data(cedev);


 pit_write(data->base, AT91_PIT_MR, 0);
}
