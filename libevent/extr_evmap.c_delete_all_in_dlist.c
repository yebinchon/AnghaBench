
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_dlist {int dummy; } ;
struct event {int dummy; } ;


 struct event* LIST_FIRST (struct event_dlist*) ;
 int event_del (struct event*) ;

__attribute__((used)) static int
delete_all_in_dlist(struct event_dlist *dlist)
{
 struct event *ev;
 while ((ev = LIST_FIRST(dlist)))
  event_del(ev);
 return 0;
}
