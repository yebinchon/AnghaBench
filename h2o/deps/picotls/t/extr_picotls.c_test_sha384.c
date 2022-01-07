
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hash; } ;
typedef TYPE_1__ ptls_cipher_suite_t ;


 int PTLS_CIPHER_SUITE_AES_256_GCM_SHA384 ;
 int ctx ;
 TYPE_1__* find_cipher (int ,int ) ;
 int test_hash (int ) ;

__attribute__((used)) static void test_sha384(void)
{
    ptls_cipher_suite_t *cs = find_cipher(ctx, PTLS_CIPHER_SUITE_AES_256_GCM_SHA384);
    if (cs != ((void*)0))
        test_hash(cs->hash);
}
