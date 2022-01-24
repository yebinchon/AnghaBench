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
struct sha1_ce_state {int finalize; TYPE_1__ sst; } ;
typedef  int /*<<< orphan*/  sha1_block_fn ;

/* Variables and functions */
 unsigned int SHA1_BLOCK_SIZE ; 
 int FUNC0 (struct shash_desc*,int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct shash_desc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct shash_desc*,int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct shash_desc*,int /*<<< orphan*/ *) ; 
 scalar_t__ sha1_ce_transform ; 
 struct sha1_ce_state* FUNC7 (struct shash_desc*) ; 

__attribute__((used)) static int FUNC8(struct shash_desc *desc, const u8 *data,
			 unsigned int len, u8 *out)
{
	struct sha1_ce_state *sctx = FUNC7(desc);
	bool finalize = !sctx->sst.count && !(len % SHA1_BLOCK_SIZE) && len;

	if (!FUNC1())
		return FUNC0(desc, data, len, out);

	/*
	 * Allow the asm code to perform the finalization if there is no
	 * partial data and the input is a round multiple of the block size.
	 */
	sctx->finalize = finalize;

	FUNC2();
	FUNC5(desc, data, len,
			    (sha1_block_fn *)sha1_ce_transform);
	if (!finalize)
		FUNC4(desc, (sha1_block_fn *)sha1_ce_transform);
	FUNC3();
	return FUNC6(desc, out);
}