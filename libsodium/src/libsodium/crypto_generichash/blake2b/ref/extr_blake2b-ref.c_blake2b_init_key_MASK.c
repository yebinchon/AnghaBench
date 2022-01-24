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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  blake2b_state ;
struct TYPE_3__ {scalar_t__ digest_length; scalar_t__ key_length; int fanout; int depth; scalar_t__* reserved; scalar_t__* salt; scalar_t__* personal; scalar_t__ inner_length; scalar_t__ node_depth; int /*<<< orphan*/  node_offset; int /*<<< orphan*/  leaf_length; } ;
typedef  TYPE_1__ blake2b_param ;

/* Variables and functions */
 int BLAKE2B_BLOCKBYTES ; 
 scalar_t__ const BLAKE2B_KEYBYTES ; 
 scalar_t__ const BLAKE2B_OUTBYTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,void const*,scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 

int
FUNC8(blake2b_state *S, const uint8_t outlen, const void *key,
                 const uint8_t keylen)
{
    blake2b_param P[1];

    if ((!outlen) || (outlen > BLAKE2B_OUTBYTES)) {
        FUNC7();
    }
    if (!key || !keylen || keylen > BLAKE2B_KEYBYTES) {
        FUNC7(); /* does not return */
    }
    P->digest_length = outlen;
    P->key_length    = keylen;
    P->fanout        = 1;
    P->depth         = 1;
    FUNC0(P->leaf_length, 0);
    FUNC1(P->node_offset, 0);
    P->node_depth   = 0;
    P->inner_length = 0;
    FUNC5(P->reserved, 0, sizeof(P->reserved));
    FUNC5(P->salt, 0, sizeof(P->salt));
    FUNC5(P->personal, 0, sizeof(P->personal));

    if (FUNC2(S, P) < 0) {
        FUNC7();
    }
    {
        uint8_t block[BLAKE2B_BLOCKBYTES];
        FUNC5(block, 0, BLAKE2B_BLOCKBYTES);
        FUNC4(block, key, keylen); /* key and keylen cannot be 0 */
        FUNC3(S, block, BLAKE2B_BLOCKBYTES);
        FUNC6(block, BLAKE2B_BLOCKBYTES); /* Burn the key from stack */
    }
    return 0;
}