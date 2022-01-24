#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_9__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_10__ {int /*<<< orphan*/  (* final ) (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* update ) (TYPE_1__*,char const*,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ ptls_hash_context_t ;
typedef  int /*<<< orphan*/  digest ;
struct TYPE_11__ {int /*<<< orphan*/  hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  PTLS_CIPHER_SUITE_AES_128_GCM_SHA256 ; 
 int /*<<< orphan*/  PTLS_HASH_FINAL_MODE_FREE ; 
 int /*<<< orphan*/  PTLS_HASH_FINAL_MODE_RESET ; 
 int /*<<< orphan*/  ctx ; 
 TYPE_9__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(void)
{
    /* test vector from RFC 4231 */
    const char *secret = "\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b\x0b", *message = "Hi There",
               *expected =
                   "\xb0\x34\x4c\x61\xd8\xdb\x38\x53\x5c\xa8\xaf\xce\xaf\x0b\xf1\x2b\x88\x1d\xc2\x00\xc9\x83\x3d\xa7\x26\xe9\x37"
                   "\x6c\x2e\x32\xcf\xf7";
    uint8_t digest[32];

    ptls_hash_context_t *hctx =
        FUNC4(FUNC0(ctx, PTLS_CIPHER_SUITE_AES_128_GCM_SHA256)->hash, secret, FUNC5(secret));

    FUNC2(digest, 0, sizeof(digest));
    hctx->update(hctx, message, FUNC5(message));
    hctx->final(hctx, digest, PTLS_HASH_FINAL_MODE_RESET);
    FUNC3(FUNC1(digest, expected, 32) == 0);

    FUNC2(digest, 0, sizeof(digest));
    hctx->update(hctx, message, FUNC5(message));
    hctx->final(hctx, digest, PTLS_HASH_FINAL_MODE_RESET);
    FUNC3(FUNC1(digest, expected, 32) == 0);

    FUNC2(digest, 0, sizeof(digest));
    hctx->update(hctx, message, FUNC5(message));
    hctx->final(hctx, digest, PTLS_HASH_FINAL_MODE_FREE);
    FUNC3(FUNC1(digest, expected, 32) == 0);
}