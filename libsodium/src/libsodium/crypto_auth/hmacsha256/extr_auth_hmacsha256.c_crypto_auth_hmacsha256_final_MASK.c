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
struct TYPE_3__ {int /*<<< orphan*/  octx; int /*<<< orphan*/  ictx; } ;
typedef  TYPE_1__ crypto_auth_hmacsha256_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int) ; 

int
FUNC3(crypto_auth_hmacsha256_state *state,
                             unsigned char                *out)
{
    unsigned char ihash[32];

    FUNC0(&state->ictx, ihash);
    FUNC1(&state->octx, ihash, 32);
    FUNC0(&state->octx, out);

    FUNC2((void *) ihash, sizeof ihash);

    return 0;
}