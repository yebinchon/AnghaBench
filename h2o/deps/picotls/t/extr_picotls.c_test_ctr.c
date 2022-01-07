
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zeroes ;
typedef int uint8_t ;
struct TYPE_7__ {TYPE_1__* aead; } ;
typedef TYPE_2__ ptls_cipher_suite_t ;
typedef int ptls_cipher_context_t ;
struct TYPE_8__ {size_t key_size; size_t iv_size; } ;
typedef TYPE_3__ ptls_cipher_algorithm_t ;
struct TYPE_6__ {TYPE_3__* ctr_cipher; } ;


 int assert (int) ;
 scalar_t__ memcmp (int *,void const*,size_t) ;
 int ok (int) ;
 int ptls_cipher_encrypt (int *,int *,int const*,size_t) ;
 int ptls_cipher_free (int *) ;
 int ptls_cipher_init (int *,void const*) ;
 int * ptls_cipher_new (TYPE_3__*,int,int const*) ;

__attribute__((used)) static void test_ctr(ptls_cipher_suite_t *cs, const uint8_t *key, size_t key_len, const void *iv, size_t iv_len,
                     const void *expected, size_t expected_len)
{
    static const uint8_t zeroes[64] = {0};

    if (cs == ((void*)0))
        return;

    ptls_cipher_algorithm_t *algo = cs->aead->ctr_cipher;
    uint8_t buf[sizeof(zeroes)];

    assert(expected_len <= sizeof(zeroes));
    ok(algo->key_size == key_len);
    ok(algo->iv_size == iv_len);

    ptls_cipher_context_t *ctx = ptls_cipher_new(algo, 1, key);
    assert(ctx != ((void*)0));
    ptls_cipher_init(ctx, iv);
    ptls_cipher_encrypt(ctx, buf, zeroes, expected_len);
    ptls_cipher_free(ctx);

    ok(memcmp(buf, expected, expected_len) == 0);
}
