#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_7__ {int buflen; int* buf; int* h; } ;
typedef  TYPE_1__ blake2b_state ;

/* Variables and functions */
 int BLAKE2B_BLOCKBYTES ; 
 int BLAKE2B_OUTBYTES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int*,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 

int
FUNC11(blake2b_state *S, uint8_t *out, uint8_t outlen)
{
    unsigned char buffer[BLAKE2B_OUTBYTES];

    if (!outlen || outlen > BLAKE2B_OUTBYTES) {
        FUNC10();
    }
    if (FUNC5(S)) {
        return -1;
    }
    if (S->buflen > BLAKE2B_BLOCKBYTES) {
        FUNC4(S, BLAKE2B_BLOCKBYTES);
        FUNC3(S, S->buf);
        S->buflen -= BLAKE2B_BLOCKBYTES;
        FUNC2(S->buflen <= BLAKE2B_BLOCKBYTES);
        FUNC7(S->buf, S->buf + BLAKE2B_BLOCKBYTES, S->buflen);
    }

    FUNC4(S, S->buflen);
    FUNC6(S);
    FUNC8(S->buf + S->buflen, 0,
           2 * BLAKE2B_BLOCKBYTES - S->buflen); /* Padding */
    FUNC3(S, S->buf);

    FUNC0(sizeof buffer == 64U);
    FUNC1(buffer + 8 * 0, S->h[0]);
    FUNC1(buffer + 8 * 1, S->h[1]);
    FUNC1(buffer + 8 * 2, S->h[2]);
    FUNC1(buffer + 8 * 3, S->h[3]);
    FUNC1(buffer + 8 * 4, S->h[4]);
    FUNC1(buffer + 8 * 5, S->h[5]);
    FUNC1(buffer + 8 * 6, S->h[6]);
    FUNC1(buffer + 8 * 7, S->h[7]);
    FUNC7(out, buffer, outlen); /* outlen <= BLAKE2B_OUTBYTES (64) */

    FUNC9(S->h, sizeof S->h);
    FUNC9(S->buf, sizeof S->buf);

    return 0;
}