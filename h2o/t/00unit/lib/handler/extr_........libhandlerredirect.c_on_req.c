
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int h2o_req_t ;
struct TYPE_7__ {int len; int base; } ;
struct TYPE_8__ {int status; scalar_t__ internal; TYPE_1__ prefix; } ;
typedef TYPE_2__ h2o_redirect_handler_t ;
struct TYPE_9__ {int len; int base; } ;
typedef TYPE_3__ h2o_iovec_t ;
typedef int h2o_handler_t ;


 TYPE_3__ h2o_build_destination (int *,int ,int ,int) ;
 int h2o_send_redirect (int *,int ,char*,int ,int ) ;
 int redirect_internally (TYPE_2__*,int *,TYPE_3__) ;

__attribute__((used)) static int on_req(h2o_handler_t *_self, h2o_req_t *req)
{
    h2o_redirect_handler_t *self = (void *)_self;
    h2o_iovec_t dest = h2o_build_destination(req, self->prefix.base, self->prefix.len, 1);


    if (self->internal) {
        redirect_internally(self, req, dest);
    } else {
        h2o_send_redirect(req, self->status, "Redirected", dest.base, dest.len);
    }

    return 0;
}
