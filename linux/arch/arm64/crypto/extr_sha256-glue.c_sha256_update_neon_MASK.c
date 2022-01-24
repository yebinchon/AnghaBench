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
struct shash_desc {int dummy; } ;
struct sha256_state {unsigned int count; } ;
typedef  int /*<<< orphan*/  sha256_block_fn ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_PREEMPT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int SHA256_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (struct shash_desc*,int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/ *) ; 
 scalar_t__ sha256_block_data_order ; 
 scalar_t__ sha256_block_neon ; 
 struct sha256_state* FUNC5 (struct shash_desc*) ; 

__attribute__((used)) static int FUNC6(struct shash_desc *desc, const u8 *data,
			      unsigned int len)
{
	struct sha256_state *sctx = FUNC5(desc);

	if (!FUNC1())
		return FUNC4(desc, data, len,
				(sha256_block_fn *)sha256_block_data_order);

	while (len > 0) {
		unsigned int chunk = len;

		/*
		 * Don't hog the CPU for the entire time it takes to process all
		 * input when running on a preemptible kernel, but process the
		 * data block by block instead.
		 */
		if (FUNC0(CONFIG_PREEMPT) &&
		    chunk + sctx->count % SHA256_BLOCK_SIZE > SHA256_BLOCK_SIZE)
			chunk = SHA256_BLOCK_SIZE -
				sctx->count % SHA256_BLOCK_SIZE;

		FUNC2();
		FUNC4(desc, data, chunk,
				      (sha256_block_fn *)sha256_block_neon);
		FUNC3();
		data += chunk;
		len -= chunk;
	}
	return 0;
}