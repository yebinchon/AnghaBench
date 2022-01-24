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
typedef  TYPE_1__ crypto_auth_hmacsha512_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (void*,int) ; 

int
FUNC5(crypto_auth_hmacsha512_state *state,
                            const unsigned char *key, size_t keylen)
{
    unsigned char pad[128];
    unsigned char khash[64];
    size_t        i;

    if (keylen > 128) {
        FUNC1(&state->ictx);
        FUNC2(&state->ictx, key, keylen);
        FUNC0(&state->ictx, khash);
        key    = khash;
        keylen = 64;
    }
    FUNC1(&state->ictx);
    FUNC3(pad, 0x36, 128);
    for (i = 0; i < keylen; i++) {
        pad[i] ^= key[i];
    }
    FUNC2(&state->ictx, pad, 128);

    FUNC1(&state->octx);
    FUNC3(pad, 0x5c, 128);
    for (i = 0; i < keylen; i++) {
        pad[i] ^= key[i];
    }
    FUNC2(&state->octx, pad, 128);

    FUNC4((void *) pad, sizeof pad);
    FUNC4((void *) khash, sizeof khash);

    return 0;
}