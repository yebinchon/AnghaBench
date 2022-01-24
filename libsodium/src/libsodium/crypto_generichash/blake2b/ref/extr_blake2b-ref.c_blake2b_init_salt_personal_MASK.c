#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  blake2b_state ;
struct TYPE_5__ {scalar_t__ digest_length; int fanout; int depth; int /*<<< orphan*/  personal; int /*<<< orphan*/  salt; int /*<<< orphan*/  reserved; scalar_t__ inner_length; scalar_t__ node_depth; int /*<<< orphan*/  node_offset; int /*<<< orphan*/  leaf_length; scalar_t__ key_length; } ;
typedef  TYPE_1__ blake2b_param ;

/* Variables and functions */
 scalar_t__ const BLAKE2B_OUTBYTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 

int
FUNC7(blake2b_state *S, const uint8_t outlen,
                           const void *salt, const void *personal)
{
    blake2b_param P[1];

    if ((!outlen) || (outlen > BLAKE2B_OUTBYTES)) {
        FUNC6();
    }
    P->digest_length = outlen;
    P->key_length    = 0;
    P->fanout        = 1;
    P->depth         = 1;
    FUNC0(P->leaf_length, 0);
    FUNC1(P->node_offset, 0);
    P->node_depth   = 0;
    P->inner_length = 0;
    FUNC5(P->reserved, 0, sizeof(P->reserved));
    if (salt != NULL) {
        FUNC4(P, (const uint8_t *) salt);
    } else {
        FUNC5(P->salt, 0, sizeof(P->salt));
    }
    if (personal != NULL) {
        FUNC3(P, (const uint8_t *) personal);
    } else {
        FUNC5(P->personal, 0, sizeof(P->personal));
    }
    return FUNC2(S, P);
}