#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_4__ {int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ crypto_hash_sha512_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int) ; 

int
FUNC3(crypto_hash_sha512_state *state, unsigned char *out)
{
    uint64_t tmp64[80 + 8];

    FUNC0(state, tmp64);
    FUNC1(out, state->state, 64);
    FUNC2((void *) tmp64, sizeof tmp64);
    FUNC2((void *) state, sizeof *state);

    return 0;
}