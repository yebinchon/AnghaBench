
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int sigbuf_small ;
struct TYPE_7__ {int key; } ;
typedef TYPE_1__ ptls_openssl_sign_certificate_t ;
struct TYPE_8__ {void const* base; int off; } ;
typedef TYPE_2__ ptls_buffer_t ;
struct TYPE_9__ {scalar_t__ sign_certificate; } ;


 int EVP_PKEY_up_ref (int ) ;
 int EVP_sha256 () ;
 TYPE_6__* ctx ;
 scalar_t__ do_sign (int ,TYPE_2__*,int ,int ) ;
 int ok (int) ;
 int ptls_buffer_dispose (TYPE_2__*) ;
 int ptls_buffer_init (TYPE_2__*,int *,int) ;
 int ptls_iovec_init (void const*,int ) ;
 int strlen (void const*) ;
 scalar_t__ verify_sign (int ,int ,int ) ;

__attribute__((used)) static void test_rsa_sign(void)
{
    ptls_openssl_sign_certificate_t *sc = (ptls_openssl_sign_certificate_t *)ctx->sign_certificate;

    const void *message = "hello world";
    ptls_buffer_t sigbuf;
    uint8_t sigbuf_small[1024];

    ptls_buffer_init(&sigbuf, sigbuf_small, sizeof(sigbuf_small));
    ok(do_sign(sc->key, &sigbuf, ptls_iovec_init(message, strlen(message)), EVP_sha256()) == 0);
    EVP_PKEY_up_ref(sc->key);
    ok(verify_sign(sc->key, ptls_iovec_init(message, strlen(message)), ptls_iovec_init(sigbuf.base, sigbuf.off)) == 0);

    ptls_buffer_dispose(&sigbuf);
}
