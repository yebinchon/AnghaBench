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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,scalar_t__*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__*,int) ; 

__attribute__((used)) static void
FUNC4(uint32_t state[8], const uint8_t block[64], uint32_t W[64],
                 uint32_t S[8])
{
    int i;

    FUNC2(W, block, 64);
    FUNC3(S, state, 32);
    for (i = 0; i < 64; i += 16) {
        FUNC1(S, W, 0, i);
        FUNC1(S, W, 1, i);
        FUNC1(S, W, 2, i);
        FUNC1(S, W, 3, i);
        FUNC1(S, W, 4, i);
        FUNC1(S, W, 5, i);
        FUNC1(S, W, 6, i);
        FUNC1(S, W, 7, i);
        FUNC1(S, W, 8, i);
        FUNC1(S, W, 9, i);
        FUNC1(S, W, 10, i);
        FUNC1(S, W, 11, i);
        FUNC1(S, W, 12, i);
        FUNC1(S, W, 13, i);
        FUNC1(S, W, 14, i);
        FUNC1(S, W, 15, i);
        if (i == 48) {
            break;
        }
        FUNC0(W, 0, i);
        FUNC0(W, 1, i);
        FUNC0(W, 2, i);
        FUNC0(W, 3, i);
        FUNC0(W, 4, i);
        FUNC0(W, 5, i);
        FUNC0(W, 6, i);
        FUNC0(W, 7, i);
        FUNC0(W, 8, i);
        FUNC0(W, 9, i);
        FUNC0(W, 10, i);
        FUNC0(W, 11, i);
        FUNC0(W, 12, i);
        FUNC0(W, 13, i);
        FUNC0(W, 14, i);
        FUNC0(W, 15, i);
    }
    for (i = 0; i < 8; i++) {
        state[i] += S[i];
    }
}