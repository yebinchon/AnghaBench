
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {int dummy; } ;
struct event {int dummy; } ;
typedef int WSADATA ;
typedef int WORD ;


 int MAKEWORD (int,int) ;
 int SIGINT ;
 int WSAStartup (int ,int *) ;
 int event_add (struct event*,int *) ;
 int event_base_dispatch (struct event_base*) ;
 int event_base_free (struct event_base*) ;
 struct event_base* event_base_new () ;
 int event_free (struct event*) ;
 int event_self_cbarg () ;
 struct event* evsignal_new (struct event_base*,int ,int ,int ) ;
 int signal_cb ;

int
main(int argc, char **argv)
{
 struct event *signal_int = ((void*)0);
 struct event_base* base;
 int ret = 0;
 base = event_base_new();
 if (!base) {
  ret = 1;
  goto out;
 }


 signal_int = evsignal_new(base, SIGINT, signal_cb, event_self_cbarg());
 if (!signal_int) {
  ret = 2;
  goto out;
 }
 event_add(signal_int, ((void*)0));

 event_base_dispatch(base);

out:
 if (signal_int)
  event_free(signal_int);
 if (base)
  event_base_free(base);
 return ret;
}
