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
typedef  union aegis_block {int dummy; } aegis_block ;
typedef  int /*<<< orphan*/  u8 ;
struct aegis_state {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 unsigned int AEGIS_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct aegis_state*,union aegis_block const*) ; 
 int /*<<< orphan*/  FUNC2 (struct aegis_state*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC3(struct aegis_state *state,
			       const u8 *src, unsigned int size)
{
	if (FUNC0(src)) {
		const union aegis_block *src_blk =
				(const union aegis_block *)src;

		while (size >= AEGIS_BLOCK_SIZE) {
			FUNC1(state, src_blk);

			size -= AEGIS_BLOCK_SIZE;
			src_blk++;
		}
	} else {
		while (size >= AEGIS_BLOCK_SIZE) {
			FUNC2(state, src);

			size -= AEGIS_BLOCK_SIZE;
			src += AEGIS_BLOCK_SIZE;
		}
	}
}