
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pit_data {int cnt; int cycle; int base; } ;
struct clock_event_device {int dummy; } ;


 int AT91_PIT_MR ;
 int AT91_PIT_PITEN ;
 int AT91_PIT_PITIEN ;
 int AT91_PIT_PIVR ;
 int PIT_PICNT (int ) ;
 struct pit_data* clkevt_to_pit_data (struct clock_event_device*) ;
 int pit_read (int ,int ) ;
 int pit_write (int ,int ,int) ;

__attribute__((used)) static int pit_clkevt_set_periodic(struct clock_event_device *dev)
{
 struct pit_data *data = clkevt_to_pit_data(dev);


 data->cnt += data->cycle * PIT_PICNT(pit_read(data->base, AT91_PIT_PIVR));
 pit_write(data->base, AT91_PIT_MR,
    (data->cycle - 1) | AT91_PIT_PITEN | AT91_PIT_PITIEN);
 return 0;
}
