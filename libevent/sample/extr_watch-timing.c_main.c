
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int member_0; int member_1; } ;
struct event {int dummy; } ;


 int EV_PERSIST ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int SIGINT ;
 int base ;
 int delays ;
 int durations ;
 int event_add (struct event*,struct timeval*) ;
 int event_base_dispatch (int ) ;
 int event_base_free (int ) ;
 int event_base_new () ;
 int event_free (struct event*) ;
 struct event* event_new (int ,int,int ,int *,int *) ;
 struct event* evsignal_new (int ,int ,int *,int *) ;
 int evwatch_check_new (int ,int *,int *) ;
 int evwatch_prepare_new (int ,int *,int *) ;
 int histogram_free (int ) ;
 int histogram_new (int) ;
 int on_check ;
 int on_prepare ;
 int on_sigint ;
 int on_timeout ;

int
main(int argc, char **argv)
{
 struct timeval one_second = { 1, 0 };
 struct event *timeout_event, *sigint_event;

 base = event_base_new();
 durations = histogram_new(100);
 delays = histogram_new(100);



 evwatch_prepare_new(base, &on_prepare, ((void*)0));
 evwatch_check_new(base, &on_check, ((void*)0));


 timeout_event = event_new(base, -1, EV_PERSIST, &on_timeout, ((void*)0));
 if (!timeout_event)
  return EXIT_FAILURE;
 event_add(timeout_event, &one_second);


 sigint_event = evsignal_new(base, SIGINT, &on_sigint, ((void*)0));
 if (!sigint_event)
  return EXIT_FAILURE;
 event_add(sigint_event, ((void*)0));


 event_base_dispatch(base);


 event_free(timeout_event);
 event_free(sigint_event);
 event_base_free(base);
 histogram_free(durations);
 histogram_free(delays);

 return EXIT_SUCCESS;
}
