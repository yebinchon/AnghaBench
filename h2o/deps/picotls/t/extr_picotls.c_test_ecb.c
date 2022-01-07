
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ptls_cipher_context_t ;
typedef int ptls_cipher_algorithm_t ;


 int assert (int ) ;
 int free (int*) ;
 int* malloc (size_t) ;
 scalar_t__ memcmp (int*,int const*,size_t) ;
 int memset (int*,int ,size_t) ;
 int ok (int) ;
 int ptls_cipher_encrypt (int *,int*,int const*,size_t) ;
 int ptls_cipher_free (int *) ;
 int * ptls_cipher_new (int *,int,int const*) ;

__attribute__((used)) static void test_ecb(ptls_cipher_algorithm_t *algo, const void *expected, size_t expected_len)
{
    static const uint8_t key[] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15,
                                  16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31},
                         plaintext[] = {0x00, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77,
                                        0x88, 0x99, 0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff};

    uint8_t *actual = malloc(expected_len);
    assert(actual != ((void*)0));

    memset(actual, 0, expected_len);
    ptls_cipher_context_t *ctx = ptls_cipher_new(algo, 1, key);
    ptls_cipher_encrypt(ctx, actual, plaintext, expected_len);
    ptls_cipher_free(ctx);
    ok(memcmp(actual, expected, expected_len) == 0);


    ctx = ptls_cipher_new(algo, 0, key);
    ptls_cipher_encrypt(ctx, actual, actual, expected_len);
    ptls_cipher_free(ctx);
    ok(memcmp(actual, plaintext, expected_len) == 0);

    free(actual);
}
