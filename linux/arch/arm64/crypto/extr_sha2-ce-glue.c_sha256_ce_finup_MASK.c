#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct shash_desc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  count; } ;
struct sha256_ce_state {int finalize; TYPE_1__ sst; } ;
typedef  int /*<<< orphan*/  sha256_block_fn ;

/* Variables and functions */
 unsigned int SHA256_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct shash_desc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct shash_desc*,int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct shash_desc*,int /*<<< orphan*/ *) ; 
 scalar_t__ sha256_block_data_order ; 
 scalar_t__ sha2_ce_transform ; 
 struct sha256_ce_state* FUNC6 (struct shash_desc*) ; 

__attribute__((used)) static int FUNC7(struct shash_desc *desc, const u8 *data,
			   unsigned int len, u8 *out)
{
	struct sha256_ce_state *sctx = FUNC6(desc);
	bool finalize = !sctx->sst.count && !(len % SHA256_BLOCK_SIZE) && len;

	if (!FUNC0()) {
		if (len)
			FUNC4(desc, data, len,
				(sha256_block_fn *)sha256_block_data_order);
		FUNC3(desc,
				(sha256_block_fn *)sha256_block_data_order);
		return FUNC5(desc, out);
	}

	/*
	 * Allow the asm code to perform the finalization if there is no
	 * partial data and the input is a round multiple of the block size.
	 */
	sctx->finalize = finalize;

	FUNC1();
	FUNC4(desc, data, len,
			      (sha256_block_fn *)sha2_ce_transform);
	if (!finalize)
		FUNC3(desc,
					(sha256_block_fn *)sha2_ce_transform);
	FUNC2();
	return FUNC5(desc, out);
}