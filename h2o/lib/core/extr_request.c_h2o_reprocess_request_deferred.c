
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_reprocess_request_deferred_t {int is_delegated; int * overrides; void* path; void* authority; int const* scheme; void* method; } ;
typedef int h2o_url_scheme_t ;
typedef int h2o_req_t ;
typedef int h2o_req_overrides_t ;
typedef void* h2o_iovec_t ;


 scalar_t__ create_deferred_action (int *,int,int ) ;
 int on_reprocess_request_cb ;

void h2o_reprocess_request_deferred(h2o_req_t *req, h2o_iovec_t method, const h2o_url_scheme_t *scheme, h2o_iovec_t authority,
                                    h2o_iovec_t path, h2o_req_overrides_t *overrides, int is_delegated)
{
    struct st_reprocess_request_deferred_t *args =
        (struct st_reprocess_request_deferred_t *)create_deferred_action(req, sizeof(*args), on_reprocess_request_cb);
    args->method = method;
    args->scheme = scheme;
    args->authority = authority;
    args->path = path;
    args->overrides = overrides;
    args->is_delegated = is_delegated;
}
