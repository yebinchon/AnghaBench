
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int h2o_token_t ;
struct TYPE_7__ {int headers; int pool; } ;
typedef TYPE_1__ h2o_req_t ;
typedef int h2o_mruby_shared_context_t ;
struct TYPE_8__ {int len; int * base; } ;
typedef TYPE_2__ h2o_iovec_t ;


 int const* H2O_TOKEN_CONTENT_LENGTH ;
 TYPE_2__ convert_env_to_header_name (int *,int *,int ) ;
 int h2o_add_header (int *,int *,int const*,int *,int *,int ) ;
 int h2o_add_header_by_str (int *,int *,int *,int ,int ,int *,int *,int ) ;
 int * h2o_lookup_token (int *,int ) ;
 TYPE_2__ h2o_strdup (int *,int *,int ) ;

__attribute__((used)) static int handle_header_env_key(h2o_mruby_shared_context_t *shared_ctx, h2o_iovec_t *env_key, h2o_iovec_t value, void *_req)
{
    h2o_req_t *req = _req;
    const h2o_token_t *token;


    h2o_iovec_t name = convert_env_to_header_name(&req->pool, env_key->base, env_key->len);
    if (name.base == ((void*)0))
        return 0;

    if ((token = h2o_lookup_token(name.base, name.len)) != ((void*)0)) {
        if (token == H2O_TOKEN_CONTENT_LENGTH) {

        } else {
            value = h2o_strdup(&req->pool, value.base, value.len);
            h2o_add_header(&req->pool, &req->headers, token, ((void*)0), value.base, value.len);
        }
    } else {
        value = h2o_strdup(&req->pool, value.base, value.len);
        h2o_add_header_by_str(&req->pool, &req->headers, name.base, name.len, 0, ((void*)0), value.base, value.len);
    }

    return 0;
}
