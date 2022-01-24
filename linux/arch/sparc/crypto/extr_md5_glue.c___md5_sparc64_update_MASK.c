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
typedef  int /*<<< orphan*/  const u8 ;
struct md5_state {unsigned int byte_count; int /*<<< orphan*/  const* block; int /*<<< orphan*/  hash; } ;

/* Variables and functions */
 unsigned int MD5_HMAC_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct md5_state *sctx, const u8 *data,
				 unsigned int len, unsigned int partial)
{
	unsigned int done = 0;

	sctx->byte_count += len;
	if (partial) {
		done = MD5_HMAC_BLOCK_SIZE - partial;
		FUNC1((u8 *)sctx->block + partial, data, done);
		FUNC0(sctx->hash, (u8 *)sctx->block, 1);
	}
	if (len - done >= MD5_HMAC_BLOCK_SIZE) {
		const unsigned int rounds = (len - done) / MD5_HMAC_BLOCK_SIZE;

		FUNC0(sctx->hash, data + done, rounds);
		done += rounds * MD5_HMAC_BLOCK_SIZE;
	}

	FUNC1(sctx->block, data + done, len - done);
}