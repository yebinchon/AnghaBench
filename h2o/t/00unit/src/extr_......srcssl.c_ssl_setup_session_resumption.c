
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int member_0; } ;
typedef TYPE_3__ ptls_encrypt_ticket_t ;
struct TYPE_10__ {int ticket_lifetime; TYPE_3__* encrypt_ticket; } ;
typedef TYPE_4__ ptls_context_t ;
typedef int pthread_t ;
typedef int pthread_attr_t ;
struct TYPE_8__ {int * update_thread; } ;
struct TYPE_7__ {int (* setup ) (int **,size_t) ;} ;
struct TYPE_11__ {TYPE_2__ ticket; TYPE_1__ cache; } ;
typedef int SSL_CTX ;


 int SSL_CTX_get_options (int *) ;
 int SSL_CTX_set_options (int *,int) ;
 int SSL_CTX_set_tlsext_ticket_key_cb (int *,int ) ;
 int SSL_OP_NO_TICKET ;
 TYPE_6__ conf ;
 int encrypt_ticket_key_ptls ;
 int h2o_multithread_create_thread (int *,int *,int *,int *) ;
 TYPE_4__* h2o_socket_ssl_get_picotls_context (int *) ;
 int pthread_attr_init (int *) ;
 int pthread_attr_setdetachstate (int *,int) ;
 int stub1 (int **,size_t) ;
 int ticket_key_callback_ossl ;

void ssl_setup_session_resumption(SSL_CTX **contexts, size_t num_contexts)
{
    if (conf.cache.setup != ((void*)0))
        conf.cache.setup(contexts, num_contexts);
}
