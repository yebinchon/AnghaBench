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
union aegis_block {void** words64; } ;
typedef  int u64 ;
struct aegis_state {int /*<<< orphan*/ * blocks; } ;

/* Variables and functions */
 unsigned int AEGIS128_STATE_BLOCKS ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct aegis_state*,union aegis_block*) ; 
 int /*<<< orphan*/  FUNC2 (union aegis_block*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct aegis_state *state,
				  union aegis_block *tag_xor,
				  u64 assoclen, u64 cryptlen)
{
	u64 assocbits = assoclen * 8;
	u64 cryptbits = cryptlen * 8;

	union aegis_block tmp;
	unsigned int i;

	tmp.words64[0] = FUNC0(assocbits);
	tmp.words64[1] = FUNC0(cryptbits);

	FUNC2(&tmp, &state->blocks[3]);

	for (i = 0; i < 7; i++)
		FUNC1(state, &tmp);

	for (i = 0; i < AEGIS128_STATE_BLOCKS; i++)
		FUNC2(tag_xor, &state->blocks[i]);
}