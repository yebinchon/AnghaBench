
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {TYPE_1__* aead; } ;
typedef TYPE_2__ ptls_cipher_suite_t ;
typedef int expected ;
struct TYPE_4__ {int ecb_cipher; } ;


 int PTLS_CIPHER_SUITE_AES_256_GCM_SHA384 ;
 int ctx ;
 TYPE_2__* find_cipher (int ,int ) ;
 int test_ecb (int ,int const*,int) ;

__attribute__((used)) static void test_aes256ecb(void)
{
    static const uint8_t expected[] = {0x8E, 0xA2, 0xB7, 0xCA, 0x51, 0x67, 0x45, 0xBF,
                                       0xEA, 0xFC, 0x49, 0x90, 0x4B, 0x49, 0x60, 0x89};
    ptls_cipher_suite_t *cipher = find_cipher(ctx, PTLS_CIPHER_SUITE_AES_256_GCM_SHA384);

    if (cipher != ((void*)0))
        test_ecb(cipher->aead->ecb_cipher, expected, sizeof(expected));
}
