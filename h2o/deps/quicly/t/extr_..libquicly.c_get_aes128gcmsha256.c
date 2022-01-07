
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* tls; } ;
typedef TYPE_2__ quicly_context_t ;
struct TYPE_8__ {scalar_t__ id; } ;
typedef TYPE_3__ ptls_cipher_suite_t ;
struct TYPE_6__ {TYPE_3__** cipher_suites; } ;


 scalar_t__ PTLS_CIPHER_SUITE_AES_128_GCM_SHA256 ;
 int assert (int ) ;

__attribute__((used)) static ptls_cipher_suite_t *get_aes128gcmsha256(quicly_context_t *ctx)
{
    ptls_cipher_suite_t **cs;

    for (cs = ctx->tls->cipher_suites;; ++cs) {
        assert(cs != ((void*)0));
        if ((*cs)->id == PTLS_CIPHER_SUITE_AES_128_GCM_SHA256)
            break;
    }
    return *cs;
}
