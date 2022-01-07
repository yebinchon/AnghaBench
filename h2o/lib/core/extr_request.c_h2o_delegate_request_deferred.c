
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_deferred_request_action_t {int dummy; } ;
typedef int h2o_req_t ;


 int create_deferred_action (int *,int,int ) ;
 int on_delegate_request_cb ;

void h2o_delegate_request_deferred(h2o_req_t *req)
{
    create_deferred_action(req, sizeof(struct st_deferred_request_action_t), on_delegate_request_cb);
}
