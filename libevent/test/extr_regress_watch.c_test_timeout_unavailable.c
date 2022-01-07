
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {int dummy; } ;
struct basic_test_data {struct event_base* base; } ;


 int event_base_dispatch (struct event_base*) ;
 int evwatch_prepare_new (struct event_base*,int *,int *) ;
 int prepare_callback_3 ;

__attribute__((used)) static void
test_timeout_unavailable(void *ptr)
{
 struct basic_test_data *data = ptr;
 struct event_base *base = data->base;

 evwatch_prepare_new(base, &prepare_callback_3, ((void*)0));
 event_base_dispatch(base);
}
