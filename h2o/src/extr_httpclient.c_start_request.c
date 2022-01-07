
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int h2o_url_t ;
typedef int h2o_socketpool_target_t ;
typedef int h2o_socketpool_t ;
struct TYPE_7__ {int loop; int * http3; } ;
typedef TYPE_1__ h2o_httpclient_ctx_t ;
struct TYPE_8__ {int body_size; int url; } ;
typedef int SSL_CTX ;


 char* CA_PATH ;
 int H2O_ROOT ;
 char* H2O_TO_STR (int ) ;
 int IO_TIMEOUT ;
 int SIZE_MAX ;
 int SSL_CTX_free (int *) ;
 int SSL_CTX_load_verify_locations (int *,char*,int *) ;
 int * SSL_CTX_new (int ) ;
 int SSL_CTX_set_verify (int *,int,int *) ;
 int SSL_VERIFY_FAIL_IF_NO_PEER_CERT ;
 int SSL_VERIFY_NONE ;
 int SSL_VERIFY_PEER ;
 int TLSv1_client_method () ;
 int * connpool ;
 int cur_req_body_size ;
 char* getenv (char*) ;
 int h2o_httpclient_connect (int *,int *,int *,TYPE_1__*,int *,int *,int ) ;
 int h2o_httpclient_connect_h3 (int *,int *,int *,TYPE_1__*,int *,int ) ;
 int h2o_httpclient_connection_pool_init (int *,int *) ;
 void* h2o_mem_alloc (int) ;
 int * h2o_mem_alloc_pool (int *,int ,int) ;
 int h2o_mem_clear_pool (int *) ;
 int * h2o_socketpool_create_target (int *,int *) ;
 int h2o_socketpool_init_specific (int *,int,int **,int,int *) ;
 int h2o_socketpool_register_loop (int *,int ) ;
 int h2o_socketpool_set_ssl_ctx (int *,int *) ;
 int h2o_socketpool_set_timeout (int *,int ) ;
 scalar_t__ h2o_url_parse (int ,int ,int *) ;
 int on_connect ;
 int on_error (TYPE_1__*,char*,int ) ;
 int pool ;
 TYPE_3__ req ;
 int sprintf (char*,char*,char*,char*) ;
 scalar_t__ ssl_verify_none ;
 int strlen (char*) ;

__attribute__((used)) static void start_request(h2o_httpclient_ctx_t *ctx)
{
    h2o_url_t *url_parsed;


    h2o_mem_clear_pool(&pool);


    url_parsed = h2o_mem_alloc_pool(&pool, *url_parsed, 1);
    if (h2o_url_parse(req.url, SIZE_MAX, url_parsed) != 0) {
        on_error(ctx, "unrecognized type of URL: %s", req.url);
        return;
    }

    cur_req_body_size = req.body_size;


    if (ctx->http3 != ((void*)0)) {
        h2o_httpclient_connect_h3(((void*)0), &pool, url_parsed, ctx, url_parsed, on_connect);
    } else {
        if (connpool == ((void*)0)) {
            connpool = h2o_mem_alloc(sizeof(*connpool));
            h2o_socketpool_t *sockpool = h2o_mem_alloc(sizeof(*sockpool));
            h2o_socketpool_target_t *target = h2o_socketpool_create_target(url_parsed, ((void*)0));
            h2o_socketpool_init_specific(sockpool, 10, &target, 1, ((void*)0));
            h2o_socketpool_set_timeout(sockpool, IO_TIMEOUT);
            h2o_socketpool_register_loop(sockpool, ctx->loop);
            h2o_httpclient_connection_pool_init(connpool, sockpool);


            char *root, *crt_fullpath;
            if ((root = getenv("H2O_ROOT")) == ((void*)0))
                root = H2O_TO_STR(H2O_ROOT);

            crt_fullpath = h2o_mem_alloc(strlen(root) + strlen("/share/h2o/ca-bundle.crt") + 1);
            sprintf(crt_fullpath, "%s%s", root, "/share/h2o/ca-bundle.crt");


            SSL_CTX *ssl_ctx = SSL_CTX_new(TLSv1_client_method());
            SSL_CTX_load_verify_locations(ssl_ctx, crt_fullpath, ((void*)0));
            if (ssl_verify_none) {
                SSL_CTX_set_verify(ssl_ctx, SSL_VERIFY_NONE, ((void*)0));
            } else {
                SSL_CTX_set_verify(ssl_ctx, SSL_VERIFY_PEER | SSL_VERIFY_FAIL_IF_NO_PEER_CERT, ((void*)0));
            }
            h2o_socketpool_set_ssl_ctx(sockpool, ssl_ctx);
            SSL_CTX_free(ssl_ctx);
        }
        h2o_httpclient_connect(((void*)0), &pool, url_parsed, ctx, connpool, url_parsed, on_connect);
    }
}
