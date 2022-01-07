
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_9__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_10__ {int (* final ) (TYPE_1__*,int *,int ) ;int (* update ) (TYPE_1__*,char const*,int ) ;} ;
typedef TYPE_1__ ptls_hash_context_t ;
typedef int digest ;
struct TYPE_11__ {int hash; } ;


 int PTLS_CIPHER_SUITE_AES_128_GCM_SHA256 ;
 int PTLS_HASH_FINAL_MODE_FREE ;
 int PTLS_HASH_FINAL_MODE_RESET ;
 int ctx ;
 TYPE_9__* find_cipher (int ,int ) ;
 scalar_t__ memcmp (int *,char const*,int) ;
 int memset (int *,int ,int) ;
 int ok (int) ;
 TYPE_1__* ptls_hmac_create (int ,char const*,int ) ;
 int strlen (char const*) ;
 int stub1 (TYPE_1__*,char const*,int ) ;
 int stub2 (TYPE_1__*,int *,int ) ;
 int stub3 (TYPE_1__*,char const*,int ) ;
 int stub4 (TYPE_1__*,int *,int ) ;
 int stub5 (TYPE_1__*,char const*,int ) ;
 int stub6 (TYPE_1__*,int *,int ) ;

__attribute__((used)) static void test_hmac_sha256(void)
{

    const char *secret = "\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b", *message = "Hi There",
               *expected =
                   "\xb0\x34\x4c\x61\xd8\xdb\x38\x53\x5c\xa8\xaf\xce\xaf\x0b\xf1\x2b\x88\x1d\xc2\x00\xc9\x83\x3d\xa7\x26\xe9\x37"
                   "\x6c\x2e\x32\xcf\xf7";
    uint8_t digest[32];

    ptls_hash_context_t *hctx =
        ptls_hmac_create(find_cipher(ctx, PTLS_CIPHER_SUITE_AES_128_GCM_SHA256)->hash, secret, strlen(secret));

    memset(digest, 0, sizeof(digest));
    hctx->update(hctx, message, strlen(message));
    hctx->final(hctx, digest, PTLS_HASH_FINAL_MODE_RESET);
    ok(memcmp(digest, expected, 32) == 0);

    memset(digest, 0, sizeof(digest));
    hctx->update(hctx, message, strlen(message));
    hctx->final(hctx, digest, PTLS_HASH_FINAL_MODE_RESET);
    ok(memcmp(digest, expected, 32) == 0);

    memset(digest, 0, sizeof(digest));
    hctx->update(hctx, message, strlen(message));
    hctx->final(hctx, digest, PTLS_HASH_FINAL_MODE_FREE);
    ok(memcmp(digest, expected, 32) == 0);
}
