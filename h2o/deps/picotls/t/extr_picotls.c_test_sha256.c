
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hash; } ;


 int PTLS_CIPHER_SUITE_AES_128_GCM_SHA256 ;
 int ctx ;
 TYPE_1__* find_cipher (int ,int ) ;
 int test_hash (int ) ;

__attribute__((used)) static void test_sha256(void)
{
    test_hash(find_cipher(ctx, PTLS_CIPHER_SUITE_AES_128_GCM_SHA256)->hash);
}
