
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int expected ;
struct TYPE_4__ {TYPE_1__* aead; } ;
struct TYPE_3__ {int ecb_cipher; } ;


 int PTLS_CIPHER_SUITE_AES_128_GCM_SHA256 ;
 int ctx ;
 TYPE_2__* find_cipher (int ,int ) ;
 int test_ecb (int ,int const*,int) ;

__attribute__((used)) static void test_aes128ecb(void)
{
    static const uint8_t expected[] = {0x69, 0xC4, 0xE0, 0xD8, 0x6A, 0x7B, 0x04, 0x30,
                                       0xD8, 0xCD, 0xB7, 0x80, 0x70, 0xB4, 0xC5, 0x5A};

    test_ecb(find_cipher(ctx, PTLS_CIPHER_SUITE_AES_128_GCM_SHA256)->aead->ecb_cipher, expected, sizeof(expected));
}
