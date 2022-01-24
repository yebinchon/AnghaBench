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
typedef  int /*<<< orphan*/  XXH32_state_t ;
typedef  int /*<<< orphan*/  U32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int) ; 

__attribute__((used)) static void FUNC5(const void* sequence, size_t len, U32 seed, U32 Nresult)
{
    XXH32_state_t state;
    U32 Dresult;
    size_t pos;

    Dresult = FUNC1(sequence, len, seed);
    FUNC0(Dresult, Nresult);

    FUNC3(&state, seed);
    FUNC4(&state, sequence, len);
    Dresult = FUNC2(&state);
    FUNC0(Dresult, Nresult);

    FUNC3(&state, seed);
    for (pos=0; pos<len; pos++)
        FUNC4(&state, ((const char*)sequence)+pos, 1);
    Dresult = FUNC2(&state);
    FUNC0(Dresult, Nresult);
}