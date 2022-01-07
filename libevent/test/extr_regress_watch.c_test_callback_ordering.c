
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct evwatch {int dummy; } ;
struct event_base {int dummy; } ;
struct basic_test_data {struct event_base* base; } ;
struct TYPE_2__ {scalar_t__ tv_sec; } ;


 int EV_TIMEOUT ;
 int check_callback_1 ;
 int check_callback_2 ;
 int event_base_dispatch (struct event_base*) ;
 int event_base_once (struct event_base*,int,int ,int *,int ,struct timeval*) ;
 struct evwatch* evwatch_check_new (struct event_base*,int *,int *) ;
 int evwatch_free (struct evwatch*) ;
 struct evwatch* evwatch_prepare_new (struct event_base*,int *,int *) ;
 int iteration ;
 int prepare_callback_1 ;
 int prepare_callback_2 ;
 TYPE_1__ start_time ;
 int timeout_callback ;
 int user_arg ;

__attribute__((used)) static void
test_callback_ordering(void *ptr)
{
 struct basic_test_data *data = ptr;
 struct event_base *base = data->base;
 struct evwatch *prepare_callback_2_watcher;
 struct evwatch *check_callback_2_watcher;
 struct timeval timeout;


 evwatch_prepare_new(base, &prepare_callback_1, &user_arg);
 evwatch_check_new(base, &check_callback_1, &user_arg);
 prepare_callback_2_watcher = evwatch_prepare_new(base, &prepare_callback_2, &user_arg);
 check_callback_2_watcher = evwatch_check_new(base, &check_callback_2, &user_arg);



 timeout.tv_sec = 1;
 timeout.tv_usec = 0;
 event_base_once(base, -1, EV_TIMEOUT, &timeout_callback, 0, &timeout);
 event_base_dispatch(base);



 iteration = 1;
 start_time.tv_sec = 0;
 evwatch_free(prepare_callback_2_watcher);
 evwatch_free(check_callback_2_watcher);
 event_base_once(base, -1, EV_TIMEOUT, &timeout_callback, 0, &timeout);
 event_base_dispatch(base);
}
