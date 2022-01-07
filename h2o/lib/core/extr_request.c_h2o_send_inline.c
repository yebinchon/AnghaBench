
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int len; int base; } ;
struct TYPE_9__ {TYPE_2__ method; } ;
struct TYPE_11__ {TYPE_1__ input; int pool; } ;
typedef TYPE_3__ h2o_req_t ;
typedef int h2o_iovec_t ;
struct TYPE_12__ {int * member_1; int * member_0; } ;
typedef TYPE_4__ h2o_generator_t ;


 int H2O_SEND_STATE_FINAL ;
 int H2O_STRLIT (char*) ;
 scalar_t__ h2o_memis (int ,int ,int ) ;
 int h2o_send (TYPE_3__*,int *,int,int ) ;
 int h2o_start_response (TYPE_3__*,TYPE_4__*) ;
 int h2o_strdup (int *,char const*,size_t) ;

void h2o_send_inline(h2o_req_t *req, const char *body, size_t len)
{
    static h2o_generator_t generator = {((void*)0), ((void*)0)};

    h2o_iovec_t buf = h2o_strdup(&req->pool, body, len);



    h2o_start_response(req, &generator);

    if (h2o_memis(req->input.method.base, req->input.method.len, H2O_STRLIT("HEAD")))
        h2o_send(req, ((void*)0), 0, H2O_SEND_STATE_FINAL);
    else
        h2o_send(req, &buf, 1, H2O_SEND_STATE_FINAL);
}
