
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;


 int EV_TIMEOUT ;
 int current_base ;
 int event_loopexit_cb ;
 int event_once (int,int ,int ,int ,struct timeval const*) ;

int
event_loopexit(const struct timeval *tv)
{
 return (event_once(-1, EV_TIMEOUT, event_loopexit_cb,
      current_base, tv));
}
