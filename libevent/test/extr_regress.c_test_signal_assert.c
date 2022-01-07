
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ evsig_caught; } ;
struct event_base {TYPE_1__ sig; } ;
struct event {int dummy; } ;


 int SIGCONT ;
 int cleanup_test () ;
 int event_base_free (struct event_base*) ;
 struct event_base* event_init () ;
 int evsignal_add (struct event*,int *) ;
 int evsignal_del (struct event*) ;
 int evsignal_set (struct event*,int ,int ,struct event*) ;
 int getpid () ;
 int kill (int ,int ) ;
 int signal_cb ;
 int test_ok ;

__attribute__((used)) static void
test_signal_assert(void)
{
 struct event ev;
 struct event_base *base = event_init();
 test_ok = 0;

 evsignal_set(&ev, SIGCONT, signal_cb, &ev);
 evsignal_add(&ev, ((void*)0));




 evsignal_del(&ev);

 kill(getpid(), SIGCONT);
 test_ok = 1;


 event_base_free(base);
 cleanup_test();
 return;
}
