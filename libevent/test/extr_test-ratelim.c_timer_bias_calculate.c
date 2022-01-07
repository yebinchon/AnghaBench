
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int member_1; int member_0; } ;
struct event_config {int dummy; } ;
struct event_base {int dummy; } ;
struct event {int dummy; } ;


 int EVENT_BASE_FLAG_PRECISE_TIMER ;
 int EV_PERSIST ;
 double MIN (int,int) ;
 int TIMER_MAX_COST_USEC ;
 scalar_t__ event_add (struct event*,struct timeval*) ;
 int event_base_dispatch (struct event_base*) ;
 int event_base_free (struct event_base*) ;
 struct event_base* event_base_new_with_config (struct event_config*) ;
 int event_config_free (struct event_config*) ;
 struct event_config* event_config_new () ;
 scalar_t__ event_config_set_flag (struct event_config*,int ) ;
 int event_free (struct event*) ;
 struct event* event_new (struct event_base*,int,int ,int ,int ) ;
 int event_self_cbarg () ;
 int evutil_gettimeofday (int *,int *) ;
 int fprintf (int ,char*) ;
 int stderr ;
 int timer_bias_cb ;
 int timer_bias_events ;
 int timer_bias_spend ;
 int timer_bias_start ;

__attribute__((used)) static double
timer_bias_calculate(void)
{
 struct event_config *cfg = ((void*)0);
 struct event_base *base = ((void*)0);
 struct event *timer = ((void*)0);
 struct timeval tv = { 0, 1 };

 cfg = event_config_new();
 if (!cfg)
  goto err;
 if (event_config_set_flag(cfg, EVENT_BASE_FLAG_PRECISE_TIMER))
  goto err;
 base = event_base_new_with_config(cfg);
 if (!base)
  goto err;

 timer = event_new(base, -1, EV_PERSIST, timer_bias_cb, event_self_cbarg());
 if (!timer || event_add(timer, &tv)) {
  goto err;
 }

 evutil_gettimeofday(&timer_bias_start, ((void*)0));
 event_base_dispatch(base);
 event_free(timer);

 return MIN(timer_bias_spend / 1e6 / timer_bias_events / TIMER_MAX_COST_USEC, 5);

err:
 if (cfg)
  event_config_free(cfg);
 if (timer)
  event_free(timer);
 if (base)
  event_base_free(base);

 fprintf(stderr, "Couldn't create event for CPU cycle counter bias\n");
 return -1;
}
