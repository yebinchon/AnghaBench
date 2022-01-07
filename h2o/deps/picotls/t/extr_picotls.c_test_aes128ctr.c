
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int key ;
typedef int iv ;
typedef int expected ;


 int PTLS_CIPHER_SUITE_AES_128_GCM_SHA256 ;
 int ctx ;
 int find_cipher (int ,int ) ;
 int test_ctr (int ,int const*,int,int const*,int,int const*,int) ;

__attribute__((used)) static void test_aes128ctr(void)
{
    static const uint8_t key[] = {0x2b, 0x7e, 0x15, 0x16, 0x28, 0xae, 0xd2, 0xa6, 0xab, 0xf7, 0x15, 0x88, 0x09, 0xcf, 0x4f, 0x3c},
                         iv[] = {0x6b, 0xc1, 0xbe, 0xe2, 0x2e, 0x40, 0x9f, 0x96, 0xe9, 0x3d, 0x7e, 0x11, 0x73, 0x93, 0x17, 0x2a},
                         expected[] = {0x3a, 0xd7, 0x7b, 0xb4, 0x0d, 0x7a, 0x36, 0x60,
                                       0xa8, 0x9e, 0xca, 0xf3, 0x24, 0x66, 0xef, 0x97};

    test_ctr(find_cipher(ctx, PTLS_CIPHER_SUITE_AES_128_GCM_SHA256), key, sizeof(key), iv, sizeof(iv), expected, sizeof(expected));
}
