
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int sigbuf_small ;
struct TYPE_5__ {char const* base; int off; } ;
typedef TYPE_1__ ptls_buffer_t ;
typedef int EVP_PKEY ;
typedef int EC_KEY ;


 int EC_KEY_free (int *) ;
 int EC_KEY_generate_key (int *) ;
 int * EC_KEY_new_by_curve_name (int ) ;
 int EVP_PKEY_free (int *) ;
 int * EVP_PKEY_new () ;
 int EVP_PKEY_set1_EC_KEY (int *,int *) ;
 int EVP_PKEY_up_ref (int *) ;
 int EVP_sha256 () ;
 int NID_X9_62_prime256v1 ;
 scalar_t__ do_sign (int *,TYPE_1__*,int ,int ) ;
 int ok (int) ;
 int ptls_buffer_dispose (TYPE_1__*) ;
 int ptls_buffer_init (TYPE_1__*,int *,int) ;
 int ptls_iovec_init (char const*,int ) ;
 int strlen (char const*) ;
 scalar_t__ verify_sign (int *,int ,int ) ;

__attribute__((used)) static void test_ecdsa_sign(void)
{
    EVP_PKEY *pkey;

    {
        EC_KEY *eckey = EC_KEY_new_by_curve_name(NID_X9_62_prime256v1);
        EC_KEY_generate_key(eckey);
        pkey = EVP_PKEY_new();
        EVP_PKEY_set1_EC_KEY(pkey, eckey);
        EC_KEY_free(eckey);
    }

    const char *message = "hello world";
    ptls_buffer_t sigbuf;
    uint8_t sigbuf_small[1024];

    ptls_buffer_init(&sigbuf, sigbuf_small, sizeof(sigbuf_small));
    ok(do_sign(pkey, &sigbuf, ptls_iovec_init(message, strlen(message)), EVP_sha256()) == 0);
    EVP_PKEY_up_ref(pkey);
    ok(verify_sign(pkey, ptls_iovec_init(message, strlen(message)), ptls_iovec_init(sigbuf.base, sigbuf.off)) == 0);

    ptls_buffer_dispose(&sigbuf);
    EVP_PKEY_free(pkey);
}
