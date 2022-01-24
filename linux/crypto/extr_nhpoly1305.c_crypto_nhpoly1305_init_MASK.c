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
struct shash_desc {int dummy; } ;
struct nhpoly1305_state {scalar_t__ nh_remaining; scalar_t__ buflen; int /*<<< orphan*/  poly_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct nhpoly1305_state* FUNC1 (struct shash_desc*) ; 

int FUNC2(struct shash_desc *desc)
{
	struct nhpoly1305_state *state = FUNC1(desc);

	FUNC0(&state->poly_state);
	state->buflen = 0;
	state->nh_remaining = 0;
	return 0;
}