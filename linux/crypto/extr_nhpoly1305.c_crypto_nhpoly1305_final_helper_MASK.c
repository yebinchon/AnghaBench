#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct shash_desc {int /*<<< orphan*/  tfm; } ;
struct nhpoly1305_state {int buflen; int /*<<< orphan*/  poly_state; scalar_t__ nh_remaining; int /*<<< orphan*/ * buffer; } ;
struct nhpoly1305_key {int dummy; } ;
typedef  int /*<<< orphan*/  nh_t ;

/* Variables and functions */
 scalar_t__ NH_MESSAGE_UNIT ; 
 struct nhpoly1305_key* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct nhpoly1305_state*,struct nhpoly1305_key const*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nhpoly1305_state*,struct nhpoly1305_key const*) ; 
 struct nhpoly1305_state* FUNC5 (struct shash_desc*) ; 

int FUNC6(struct shash_desc *desc, u8 *dst, nh_t nh_fn)
{
	struct nhpoly1305_state *state = FUNC5(desc);
	const struct nhpoly1305_key *key = FUNC0(desc->tfm);

	if (state->buflen) {
		FUNC1(&state->buffer[state->buflen], 0,
		       NH_MESSAGE_UNIT - state->buflen);
		FUNC2(state, key, state->buffer, NH_MESSAGE_UNIT,
				 nh_fn);
	}

	if (state->nh_remaining)
		FUNC4(state, key);

	FUNC3(&state->poly_state, dst);
	return 0;
}