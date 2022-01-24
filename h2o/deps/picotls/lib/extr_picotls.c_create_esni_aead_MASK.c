#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  ptls_iovec_t ;
struct TYPE_5__ {TYPE_2__* hash; int /*<<< orphan*/  aead; } ;
typedef  TYPE_1__ ptls_cipher_suite_t ;
typedef  int /*<<< orphan*/  ptls_aead_context_t ;
typedef  int /*<<< orphan*/  aead_secret ;
struct TYPE_6__ {int /*<<< orphan*/  digest_size; } ;

/* Variables and functions */
 int PTLS_ERROR_NO_MEMORY ; 
 int PTLS_MAX_DIGEST_SIZE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(ptls_aead_context_t **aead_ctx, int is_enc, ptls_cipher_suite_t *cipher, ptls_iovec_t ecdh_secret,
                            const uint8_t *esni_contents_hash)
{
    uint8_t aead_secret[PTLS_MAX_DIGEST_SIZE];
    int ret;

    if ((ret = FUNC2(cipher->hash, aead_secret, FUNC3(NULL, 0), ecdh_secret)) != 0)
        goto Exit;
    if ((*aead_ctx = FUNC0(cipher->aead, cipher->hash, is_enc, aead_secret,
                              FUNC3(esni_contents_hash, cipher->hash->digest_size), "tls13 esni ")) == NULL) {
        ret = PTLS_ERROR_NO_MEMORY;
        goto Exit;
    }

    ret = 0;
Exit:
    FUNC1(aead_secret, sizeof(aead_secret));
    return ret;
}