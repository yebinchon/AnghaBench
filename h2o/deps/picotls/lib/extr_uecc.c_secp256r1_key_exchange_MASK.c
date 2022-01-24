#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  ptls_key_exchange_algorithm_t ;
struct TYPE_6__ {scalar_t__ len; scalar_t__* base; } ;
typedef  TYPE_1__ ptls_iovec_t ;
typedef  int /*<<< orphan*/  priv ;

/* Variables and functions */
 int PTLS_ALERT_DECRYPT_ERROR ; 
 int PTLS_ERROR_NO_MEMORY ; 
 int SECP256R1_PRIVATE_KEY_SIZE ; 
 scalar_t__ SECP256R1_PUBLIC_KEY_SIZE ; 
 scalar_t__ SECP256R1_SHARED_SECRET_SIZE ; 
 scalar_t__ TYPE_UNCOMPRESSED_PUBLIC_KEY ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 scalar_t__* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int) ; 
 TYPE_1__ FUNC3 (scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,scalar_t__*,scalar_t__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(ptls_key_exchange_algorithm_t *algo, ptls_iovec_t *pubkey, ptls_iovec_t *secret,
                                  ptls_iovec_t peerkey)
{
    uint8_t priv[SECP256R1_PRIVATE_KEY_SIZE], *pub = NULL, *secbytes = NULL;
    int ret;

    if (peerkey.len != SECP256R1_PUBLIC_KEY_SIZE || peerkey.base[0] != TYPE_UNCOMPRESSED_PUBLIC_KEY) {
        ret = PTLS_ALERT_DECRYPT_ERROR;
        goto Exit;
    }
    if ((pub = FUNC1(SECP256R1_PUBLIC_KEY_SIZE)) == NULL) {
        ret = PTLS_ERROR_NO_MEMORY;
        goto Exit;
    }
    if ((secbytes = FUNC1(SECP256R1_SHARED_SECRET_SIZE)) == NULL) {
        ret = PTLS_ERROR_NO_MEMORY;
        goto Exit;
    }

    pub[0] = TYPE_UNCOMPRESSED_PUBLIC_KEY;
    FUNC4(pub + 1, priv, FUNC5());
    if (!FUNC6(peerkey.base + 1, priv, secbytes, FUNC5())) {
        ret = PTLS_ALERT_DECRYPT_ERROR;
        goto Exit;
    }
    *pubkey = FUNC3(pub, SECP256R1_PUBLIC_KEY_SIZE);
    *secret = FUNC3(secbytes, SECP256R1_SHARED_SECRET_SIZE);
    ret = 0;

Exit:
    FUNC2(priv, sizeof(priv));
    if (ret != 0) {
        FUNC0(secbytes);
        FUNC0(pub);
    }
    return ret;
}