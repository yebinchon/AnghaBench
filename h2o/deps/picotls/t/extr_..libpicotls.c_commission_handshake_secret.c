
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int secret; } ;
struct TYPE_8__ {TYPE_1__ dec; TYPE_1__ enc; } ;
struct TYPE_9__ {int * pending_handshake_secret; TYPE_2__ traffic_protection; } ;
typedef TYPE_3__ ptls_t ;


 int PTLS_MAX_DIGEST_SIZE ;
 int assert (int ) ;
 int free (int *) ;
 int memcpy (int ,int *,int ) ;
 int ptls_clear_memory (int *,int ) ;
 int ptls_is_server (TYPE_3__*) ;
 int setup_traffic_protection (TYPE_3__*,int,int *,int,int) ;

__attribute__((used)) static int commission_handshake_secret(ptls_t *tls)
{
    int is_enc = !ptls_is_server(tls);

    assert(tls->pending_handshake_secret != ((void*)0));
    memcpy((is_enc ? &tls->traffic_protection.enc : &tls->traffic_protection.dec)->secret, tls->pending_handshake_secret,
           PTLS_MAX_DIGEST_SIZE);
    ptls_clear_memory(tls->pending_handshake_secret, PTLS_MAX_DIGEST_SIZE);
    free(tls->pending_handshake_secret);
    tls->pending_handshake_secret = ((void*)0);

    return setup_traffic_protection(tls, is_enc, ((void*)0), 2, 1);
}
