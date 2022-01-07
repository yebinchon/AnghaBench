
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct event_base {TYPE_1__* evsel; } ;
struct TYPE_2__ {int features; } ;



int
event_base_get_features(const struct event_base *base)
{
 return base->evsel->features;
}
