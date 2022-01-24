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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {int /*<<< orphan*/ * h; } ;
typedef  TYPE_1__ blake2b_state ;
typedef  int /*<<< orphan*/  blake2b_param ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

int
FUNC3(blake2b_state *S, const blake2b_param *P)
{
    size_t         i;
    const uint8_t *p;

    FUNC0(sizeof *P == 64);
    FUNC2(S);
    p = (const uint8_t *) (P);

    /* IV XOR ParamBlock */
    for (i = 0; i < 8; i++) {
        S->h[i] ^= FUNC1(p + sizeof(S->h[i]) * i);
    }
    return 0;
}