
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {int dummy; } ;


 int event_base_free_ (struct event_base*,int) ;

void
event_base_free(struct event_base *base)
{
 event_base_free_(base, 1);
}
