
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int encrypted; } ;
struct TYPE_5__ {struct st_h2o_socket_ssl_t* base; } ;
struct TYPE_6__ {TYPE_1__ session_cache_key; struct st_h2o_socket_ssl_t* server_name; } ;
struct TYPE_7__ {TYPE_2__ client; } ;
struct st_h2o_socket_ssl_t {TYPE_4__ input; int * ossl; TYPE_3__ handshake; int * ptls; } ;


 int SSL_free (int *) ;
 int SSL_is_server (int *) ;
 int clear_output_buffer (struct st_h2o_socket_ssl_t*) ;
 int free (struct st_h2o_socket_ssl_t*) ;
 int h2o_buffer_dispose (int *) ;
 int ptls_free (int *) ;

__attribute__((used)) static void destroy_ssl(struct st_h2o_socket_ssl_t *ssl)
{
    if (ssl->ptls != ((void*)0)) {
        ptls_free(ssl->ptls);
        ssl->ptls = ((void*)0);
    }
    if (ssl->ossl != ((void*)0)) {
        if (!SSL_is_server(ssl->ossl)) {
            free(ssl->handshake.client.server_name);
            free(ssl->handshake.client.session_cache_key.base);
        }
        SSL_free(ssl->ossl);
        ssl->ossl = ((void*)0);
    }
    h2o_buffer_dispose(&ssl->input.encrypted);
    clear_output_buffer(ssl);
    free(ssl);
}
