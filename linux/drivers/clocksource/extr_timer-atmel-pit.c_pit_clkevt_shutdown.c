
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pit_data {int cycle; int base; } ;
struct clock_event_device {int dummy; } ;


 int AT91_PIT_MR ;
 int AT91_PIT_PITEN ;
 struct pit_data* clkevt_to_pit_data (struct clock_event_device*) ;
 int pit_write (int ,int ,int) ;

__attribute__((used)) static int pit_clkevt_shutdown(struct clock_event_device *dev)
{
 struct pit_data *data = clkevt_to_pit_data(dev);


 pit_write(data->base, AT91_PIT_MR, (data->cycle - 1) | AT91_PIT_PITEN);
 return 0;
}
