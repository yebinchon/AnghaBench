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
struct sha512_state {unsigned int* count; int /*<<< orphan*/  const* buf; } ;

/* Variables and functions */
 unsigned int SHA512_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC2(struct sha512_state *sctx, const u8 *data,
				   unsigned int len)
{
	unsigned int part_len;
	unsigned int index;
	unsigned int i;

	/* Compute number of bytes mod 128. */
	index = sctx->count[0] % SHA512_BLOCK_SIZE;

	/* Update number of bytes. */
	if ((sctx->count[0] += len) < len)
		sctx->count[1]++;

	part_len = SHA512_BLOCK_SIZE - index;

	/* Transform as many times as possible. */
	if (len >= part_len) {
		FUNC0(&sctx->buf[index], data, part_len);
		FUNC1(sctx->buf);

		for (i = part_len; i + SHA512_BLOCK_SIZE <= len;
			i += SHA512_BLOCK_SIZE)
			FUNC1(&data[i]);

		index = 0;
	} else {
		i = 0;
	}

	/* Buffer remaining input. */
	FUNC0(&sctx->buf[index], &data[i], len - i);
}