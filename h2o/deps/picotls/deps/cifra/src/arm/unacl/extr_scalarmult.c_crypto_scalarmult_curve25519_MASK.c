#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8 ;
struct TYPE_6__ {unsigned char* as_uint8; } ;
struct TYPE_7__ {int nextScalarBitToProcess; size_t previousProcessedBit; int /*<<< orphan*/  xp; int /*<<< orphan*/  zp; int /*<<< orphan*/  x0; int /*<<< orphan*/  zq; int /*<<< orphan*/  xq; int /*<<< orphan*/ * pXp; int /*<<< orphan*/ * pZp; int /*<<< orphan*/ * pZq; int /*<<< orphan*/ * pXq; TYPE_1__ s; } ;
typedef  TYPE_2__ ST_curve25519ladderstepWorkingState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned char const*) ; 

int
FUNC11(
    unsigned char*       r,
    const unsigned char* s,
    const unsigned char* p
)
{
    ST_curve25519ladderstepWorkingState state;
    unsigned char i;


    // Prepare the scalar within the working state buffer.
    for (i = 0; i < 32; i++)
    {
        state.s.as_uint8 [i] = s[i];
    }
#if DH_REPLACE_LAST_THREE_LADDERSTEPS_WITH_DOUBLINGS    
    // Due to explicit final doubling for the last three bits instead of a full ladderstep, 
    // the following line is no longer necessary.
#else
    state.s.as_uint8 [0] &= 248; 
#endif
    state.s.as_uint8 [31] &= 127;
    state.s.as_uint8 [31] |= 64;

    // Copy the affine x-axis of the base point to the state.
    FUNC10 (&state.x0, p);

    // Prepare the working points within the working state struct.

    FUNC8 (&state.zq);
    FUNC3 (&state.xq, &state.x0);

    FUNC8(&state.xp);
    FUNC9(&state.zp);

    state.nextScalarBitToProcess = 254;

#ifdef DH_SWAP_BY_POINTERS
    // we need to initially assign the pointers correctly.
    state.pXp = &state.xp;
    state.pZp = &state.zp;
    state.pXq = &state.xq;
    state.pZq = &state.zq;
#endif

    state.previousProcessedBit = 0;

#if DH_REPLACE_LAST_THREE_LADDERSTEPS_WITH_DOUBLINGS          
    // Process all the bits except for the last three where we explicitly double the result.
    while (state.nextScalarBitToProcess >= 3)
#else
    // Process all the bits except for the last three where we explicitly double the result.
    while (state.nextScalarBitToProcess >= 0)
#endif    
    {
    	uint8 byteNo = state.nextScalarBitToProcess >> 3;
    	uint8 bitNo = state.nextScalarBitToProcess & 7;
        uint8 bit;
        uint8 swap;

        bit = 1 & (state.s.as_uint8 [byteNo] >> bitNo);
        swap = bit ^ state.previousProcessedBit;
        state.previousProcessedBit = bit;
        FUNC0(&state, swap);
        FUNC2(&state);
        state.nextScalarBitToProcess --;
    }

    FUNC0(&state,state.previousProcessedBit);

#if DH_REPLACE_LAST_THREE_LADDERSTEPS_WITH_DOUBLINGS        
    curve25519_doublePointP (&state);
    curve25519_doublePointP (&state);
    curve25519_doublePointP (&state);
#endif

#ifdef DH_SWAP_BY_POINTERS
    // optimize for stack usage.
    fe25519_invert_useProvidedScratchBuffers (state.pZp, state.pZp, state.pXq,state.pZq,&state.x0);
    fe25519_mul(state.pXp, state.pXp, state.pZp);
    fe25519_reduceCompletely(state.pXp);

    fe25519_pack (r, state.pXp);
#else
    // optimize for stack usage.
    FUNC4 (&state.zp, &state.zp, &state.xq, &state.zq, &state.x0);    
    FUNC5(&state.xp, &state.xp, &state.zp);
    FUNC7(&state.xp);

    FUNC6 (r, &state.xp);
#endif

    return 0;
}