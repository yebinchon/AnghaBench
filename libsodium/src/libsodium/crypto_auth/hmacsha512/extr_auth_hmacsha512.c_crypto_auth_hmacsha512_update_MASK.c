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
struct TYPE_3__ {int /*<<< orphan*/  ictx; } ;
typedef  TYPE_1__ crypto_auth_hmacsha512_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char const*,unsigned long long) ; 

int
FUNC1(crypto_auth_hmacsha512_state *state,
                              const unsigned char *in, unsigned long long inlen)
{
    FUNC0(&state->ictx, in, inlen);

    return 0;
}