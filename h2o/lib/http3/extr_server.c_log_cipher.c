
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int quic; } ;
struct st_h2o_http3_server_conn_t {TYPE_1__ h3; } ;
typedef int ptls_t ;
struct TYPE_9__ {TYPE_2__* aead; } ;
typedef TYPE_3__ ptls_cipher_suite_t ;
struct TYPE_10__ {scalar_t__ conn; } ;
typedef TYPE_4__ h2o_req_t ;
typedef int h2o_iovec_t ;
struct TYPE_8__ {int * name; } ;


 int h2o_iovec_init (int *,int ) ;
 TYPE_3__* ptls_get_cipher (int *) ;
 int * quicly_get_tls (int ) ;
 int strlen (int *) ;

__attribute__((used)) static h2o_iovec_t log_cipher(h2o_req_t *req)
{
    struct st_h2o_http3_server_conn_t *conn = (struct st_h2o_http3_server_conn_t *)req->conn;
    ptls_t *tls = quicly_get_tls(conn->h3.quic);
    ptls_cipher_suite_t *cipher = ptls_get_cipher(tls);
    return cipher != ((void*)0) ? h2o_iovec_init(cipher->aead->name, strlen(cipher->aead->name)) : h2o_iovec_init(((void*)0), 0);
}
