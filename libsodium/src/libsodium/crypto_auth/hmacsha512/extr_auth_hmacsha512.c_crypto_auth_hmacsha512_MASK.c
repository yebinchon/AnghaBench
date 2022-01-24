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
typedef  int /*<<< orphan*/  crypto_auth_hmacsha512_state ;

/* Variables and functions */
 int /*<<< orphan*/  crypto_auth_hmacsha512_KEYBYTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char const*,unsigned long long) ; 

int
FUNC3(unsigned char *out, const unsigned char *in,
                       unsigned long long inlen, const unsigned char *k)
{
    crypto_auth_hmacsha512_state state;

    FUNC1(&state, k, crypto_auth_hmacsha512_KEYBYTES);
    FUNC2(&state, in, inlen);
    FUNC0(&state, out);

    return 0;
}