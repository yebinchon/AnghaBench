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
typedef  union aegis_block {int /*<<< orphan*/  const* bytes; } const aegis_block ;
typedef  int /*<<< orphan*/  const u8 ;
struct aegis_state {union aegis_block const* blocks; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 unsigned int AEGIS_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct aegis_state*,union aegis_block const*) ; 
 int /*<<< orphan*/  FUNC2 (struct aegis_state*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (union aegis_block const*,union aegis_block const*) ; 
 int /*<<< orphan*/  FUNC4 (union aegis_block const*,union aegis_block const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static void FUNC7(struct aegis_state *state, u8 *dst,
					  const u8 *src, unsigned int size)
{
	union aegis_block tmp;

	if (FUNC0(src) && FUNC0(dst)) {
		while (size >= AEGIS_BLOCK_SIZE) {
			union aegis_block *dst_blk =
					(union aegis_block *)dst;
			const union aegis_block *src_blk =
					(const union aegis_block *)src;

			tmp = state->blocks[2];
			FUNC3(&tmp, &state->blocks[3]);
			FUNC4(&tmp, &state->blocks[4]);
			FUNC4(&tmp, &state->blocks[1]);
			FUNC4(&tmp, src_blk);

			FUNC1(state, src_blk);

			*dst_blk = tmp;

			size -= AEGIS_BLOCK_SIZE;
			src += AEGIS_BLOCK_SIZE;
			dst += AEGIS_BLOCK_SIZE;
		}
	} else {
		while (size >= AEGIS_BLOCK_SIZE) {
			tmp = state->blocks[2];
			FUNC3(&tmp, &state->blocks[3]);
			FUNC4(&tmp, &state->blocks[4]);
			FUNC4(&tmp, &state->blocks[1]);
			FUNC5(tmp.bytes, src, AEGIS_BLOCK_SIZE);

			FUNC2(state, src);

			FUNC6(dst, tmp.bytes, AEGIS_BLOCK_SIZE);

			size -= AEGIS_BLOCK_SIZE;
			src += AEGIS_BLOCK_SIZE;
			dst += AEGIS_BLOCK_SIZE;
		}
	}

	if (size > 0) {
		union aegis_block msg = {};
		FUNC6(msg.bytes, src, size);

		tmp = state->blocks[2];
		FUNC3(&tmp, &state->blocks[3]);
		FUNC4(&tmp, &state->blocks[4]);
		FUNC4(&tmp, &state->blocks[1]);

		FUNC1(state, &msg);

		FUNC4(&msg, &tmp);

		FUNC6(dst, msg.bytes, size);
	}
}