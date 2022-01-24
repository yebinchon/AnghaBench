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
typedef  int /*<<< orphan*/  u8 ;
struct scatterlist {int dummy; } ;
struct scatter_walk {int dummy; } ;
struct aegis_state {int dummy; } ;
struct aegis_block {int /*<<< orphan*/  const* bytes; } ;

/* Variables and functions */
 unsigned int AEGIS128_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct aegis_state*,unsigned int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct scatter_walk*,unsigned int) ; 
 unsigned int FUNC4 (struct scatter_walk*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct scatter_walk*,int /*<<< orphan*/ ,unsigned int) ; 
 void* FUNC6 (struct scatter_walk*) ; 
 int /*<<< orphan*/  FUNC7 (struct scatter_walk*,struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 

__attribute__((used)) static void FUNC9(
		struct aegis_state *state, struct scatterlist *sg_src,
		unsigned int assoclen)
{
	struct scatter_walk walk;
	struct aegis_block buf;
	unsigned int pos = 0;

	FUNC7(&walk, sg_src);
	while (assoclen != 0) {
		unsigned int size = FUNC4(&walk, assoclen);
		unsigned int left = size;
		void *mapped = FUNC6(&walk);
		const u8 *src = (const u8 *)mapped;

		if (pos + size >= AEGIS128_BLOCK_SIZE) {
			if (pos > 0) {
				unsigned int fill = AEGIS128_BLOCK_SIZE - pos;
				FUNC1(buf.bytes + pos, src, fill);
				FUNC0(state,
							 AEGIS128_BLOCK_SIZE,
							 buf.bytes);
				pos = 0;
				left -= fill;
				src += fill;
			}

			FUNC0(state, left, src);

			src += left & ~(AEGIS128_BLOCK_SIZE - 1);
			left &= AEGIS128_BLOCK_SIZE - 1;
		}

		FUNC1(buf.bytes + pos, src, left);
		pos += left;
		assoclen -= size;

		FUNC8(mapped);
		FUNC3(&walk, size);
		FUNC5(&walk, 0, assoclen);
	}

	if (pos > 0) {
		FUNC2(buf.bytes + pos, 0, AEGIS128_BLOCK_SIZE - pos);
		FUNC0(state, AEGIS128_BLOCK_SIZE, buf.bytes);
	}
}