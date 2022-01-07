
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_io_map {int dummy; } ;


 int evmap_signal_clear_ (struct event_io_map*) ;

void
evmap_io_clear_(struct event_io_map* ctx)
{
 evmap_signal_clear_(ctx);
}
