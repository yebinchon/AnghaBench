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
union aegis_block {scalar_t__ bytes; } ;
typedef  int /*<<< orphan*/  u8 ;
struct scatterlist {int dummy; } ;
struct scatter_walk {int dummy; } ;
struct aegis_state {int dummy; } ;

/* Variables and functions */
 unsigned int AEGIS_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct aegis_state*,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct aegis_state*,union aegis_block*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct scatter_walk*,unsigned int) ; 
 unsigned int FUNC5 (struct scatter_walk*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct scatter_walk*,int /*<<< orphan*/ ,unsigned int) ; 
 void* FUNC7 (struct scatter_walk*) ; 
 int /*<<< orphan*/  FUNC8 (struct scatter_walk*,struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 

__attribute__((used)) static void FUNC10(struct aegis_state *state,
				       struct scatterlist *sg_src,
				       unsigned int assoclen)
{
	struct scatter_walk walk;
	union aegis_block buf;
	unsigned int pos = 0;

	FUNC8(&walk, sg_src);
	while (assoclen != 0) {
		unsigned int size = FUNC5(&walk, assoclen);
		unsigned int left = size;
		void *mapped = FUNC7(&walk);
		const u8 *src = (const u8 *)mapped;

		if (pos + size >= AEGIS_BLOCK_SIZE) {
			if (pos > 0) {
				unsigned int fill = AEGIS_BLOCK_SIZE - pos;
				FUNC2(buf.bytes + pos, src, fill);
				FUNC1(state, &buf);
				pos = 0;
				left -= fill;
				src += fill;
			}

			FUNC0(state, src, left);
			src += left & ~(AEGIS_BLOCK_SIZE - 1);
			left &= AEGIS_BLOCK_SIZE - 1;
		}

		FUNC2(buf.bytes + pos, src, left);

		pos += left;
		assoclen -= size;
		FUNC9(mapped);
		FUNC4(&walk, size);
		FUNC6(&walk, 0, assoclen);
	}

	if (pos > 0) {
		FUNC3(buf.bytes + pos, 0, AEGIS_BLOCK_SIZE - pos);
		FUNC1(state, &buf);
	}
}