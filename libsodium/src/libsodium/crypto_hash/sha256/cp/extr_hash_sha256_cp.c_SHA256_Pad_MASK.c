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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_3__ {int count; void** buf; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ crypto_hash_sha256_state ;

/* Variables and functions */
 void** PAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void**,int) ; 
 int /*<<< orphan*/  FUNC2 (void**,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(crypto_hash_sha256_state *state, uint32_t tmp32[64 + 8])
{
    unsigned int r;
    unsigned int i;

    r = (unsigned int) ((state->count >> 3) & 0x3f);
    if (r < 56) {
        for (i = 0; i < 56 - r; i++) {
            state->buf[r + i] = PAD[i];
        }
    } else {
        for (i = 0; i < 64 - r; i++) {
            state->buf[r + i] = PAD[i];
        }
        FUNC0(state->state, state->buf, &tmp32[0], &tmp32[64]);
        FUNC2(&state->buf[0], 0, 56);
    }
    FUNC1(&state->buf[56], state->count);
    FUNC0(state->state, state->buf, &tmp32[0], &tmp32[64]);
}