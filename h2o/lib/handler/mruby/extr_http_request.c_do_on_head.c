
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct st_h2o_mruby_http_request_context_t {int * client; } ;
typedef int headers ;
typedef int h2o_iovec_t ;
struct TYPE_3__ {struct st_h2o_mruby_http_request_context_t* data; } ;
typedef TYPE_1__ h2o_httpclient_t ;
typedef int * h2o_httpclient_body_cb ;
typedef int h2o_header_t ;


 char const* h2o_httpclient_error_is_eos ;
 int headers_sort_cb ;
 int * on_body ;
 int post_error (struct st_h2o_mruby_http_request_context_t*,char const*) ;
 int post_response (struct st_h2o_mruby_http_request_context_t*,int,int *,size_t,int) ;
 int qsort (int *,size_t,int,int ) ;

__attribute__((used)) static h2o_httpclient_body_cb do_on_head(h2o_httpclient_t *client, const char *errstr, int version, int status, h2o_iovec_t msg,
                                         h2o_header_t *headers, size_t num_headers, int header_requires_dup)
{
    struct st_h2o_mruby_http_request_context_t *ctx = client->data;

    if (errstr != ((void*)0)) {
        if (errstr != h2o_httpclient_error_is_eos) {

            post_error(ctx, errstr);
            return ((void*)0);
        }

        ctx->client = ((void*)0);
    }

    qsort(headers, num_headers, sizeof(headers[0]), headers_sort_cb);
    post_response(ctx, status, headers, num_headers, header_requires_dup);

    return on_body;
}
