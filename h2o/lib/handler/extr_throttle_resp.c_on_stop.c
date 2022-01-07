
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int timeout_entry; } ;
typedef TYPE_1__ throttle_resp_t ;
typedef int h2o_req_t ;
typedef int h2o_ostream_t ;


 scalar_t__ h2o_timer_is_linked (int *) ;
 int h2o_timer_unlink (int *) ;

__attribute__((used)) static void on_stop(h2o_ostream_t *_self, h2o_req_t *req)
{
    throttle_resp_t *self = (void *)_self;
    if (h2o_timer_is_linked(&self->timeout_entry))
        h2o_timer_unlink(&self->timeout_entry);
}
