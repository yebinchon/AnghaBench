
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int authority; int scheme; } ;
struct TYPE_10__ {TYPE_2__* hostconf; int authority; scalar_t__ res_is_delegated; int * scheme; TYPE_3__ input; int path_normalized; int pool; } ;
typedef TYPE_4__ h2o_req_t ;
typedef int h2o_iovec_t ;
struct TYPE_7__ {int allow_cross_origin_push; } ;
struct TYPE_8__ {TYPE_1__ http2; } ;


 int do_push_path ;
 int h2o_extract_push_path_from_link_header (int *,char const*,size_t,int ,int ,int ,int *,int *,int ,TYPE_4__*,int *,int ) ;
 int h2o_iovec_init (char const*,size_t) ;

h2o_iovec_t h2o_push_path_in_link_header(h2o_req_t *req, const char *value, size_t value_len)
{
    h2o_iovec_t ret = h2o_iovec_init(value, value_len);

    h2o_extract_push_path_from_link_header(&req->pool, value, value_len, req->path_normalized, req->input.scheme,
                                           req->input.authority, req->res_is_delegated ? req->scheme : ((void*)0),
                                           req->res_is_delegated ? &req->authority : ((void*)0), do_push_path, req, &ret,
                                           req->hostconf->http2.allow_cross_origin_push);

    return ret;
}
