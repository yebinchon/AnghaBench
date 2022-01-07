
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct deferred_test_data {int * cbs; int queue; } ;
typedef int THREAD_FN ;


 size_t CB_COUNT ;
 int SLEEP_MS (int) ;
 int THREAD_RETURN () ;
 int deferred_callback ;
 int event_deferred_cb_init_ (int *,int ,int ,int *) ;
 int event_deferred_cb_schedule_ (int ,int *) ;

__attribute__((used)) static THREAD_FN
load_deferred_queue(void *arg)
{
 struct deferred_test_data *data = arg;
 size_t i;

 for (i = 0; i < CB_COUNT; ++i) {
  event_deferred_cb_init_(&data->cbs[i], 0, deferred_callback,
      ((void*)0));
  event_deferred_cb_schedule_(data->queue, &data->cbs[i]);
  SLEEP_MS(1);
 }

 THREAD_RETURN();
}
