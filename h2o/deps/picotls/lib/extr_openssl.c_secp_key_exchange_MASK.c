#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ data; } ;
typedef  TYPE_1__ ptls_key_exchange_algorithm_t ;
typedef  int /*<<< orphan*/  ptls_iovec_t ;
typedef  int /*<<< orphan*/  EC_GROUP ;
typedef  int /*<<< orphan*/  BN_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int PTLS_ERROR_LIBRARY ; 
 int PTLS_ERROR_NO_MEMORY ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(ptls_key_exchange_algorithm_t *algo, ptls_iovec_t *pubkey, ptls_iovec_t *secret, ptls_iovec_t peerkey)
{
    EC_GROUP *group = NULL;
    BN_CTX *bn_ctx = NULL;
    int ret;

    if ((group = FUNC3((int)algo->data)) == NULL) {
        ret = PTLS_ERROR_LIBRARY;
        goto Exit;
    }
    if ((bn_ctx = FUNC1()) == NULL) {
        ret = PTLS_ERROR_NO_MEMORY;
        goto Exit;
    }

    ret = FUNC4(group, pubkey, secret, peerkey, bn_ctx);

Exit:
    if (bn_ctx != NULL)
        FUNC0(bn_ctx);
    if (group != NULL)
        FUNC2(group);
    return ret;
}