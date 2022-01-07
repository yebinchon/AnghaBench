
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_and_count {int count; } ;
struct event {int dummy; } ;


 int event_free (struct event*) ;

__attribute__((used)) static void
event_finalize_callback_2(struct event *ev, void *arg)
{
 struct event_and_count *evc = arg;
 evc->count += 100;
 event_free(ev);
}
