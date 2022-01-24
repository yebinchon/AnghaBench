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
typedef  int /*<<< orphan*/  XXH64_state_t ;
typedef  int /*<<< orphan*/  U64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static void FUNC5(void* sentence, size_t len, U64 seed, U64 Nresult)
{
    XXH64_state_t state;
    U64 Dresult;
    size_t pos;

    Dresult = FUNC1(sentence, len, seed);
    FUNC0(Dresult, Nresult);

    FUNC3(&state, seed);
    FUNC4(&state, sentence, len);
    Dresult = FUNC2(&state);
    FUNC0(Dresult, Nresult);

    FUNC3(&state, seed);
    for (pos=0; pos<len; pos++)
        FUNC4(&state, ((char*)sentence)+pos, 1);
    Dresult = FUNC2(&state);
    FUNC0(Dresult, Nresult);
}