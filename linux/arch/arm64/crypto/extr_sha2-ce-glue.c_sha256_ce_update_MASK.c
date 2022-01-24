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
struct sha256_ce_state {scalar_t__ finalize; } ;
typedef  int /*<<< orphan*/  sha256_block_fn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct shash_desc*,int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/ *) ; 
 scalar_t__ sha256_block_data_order ; 
 scalar_t__ sha2_ce_transform ; 
 struct sha256_ce_state* FUNC4 (struct shash_desc*) ; 

__attribute__((used)) static int FUNC5(struct shash_desc *desc, const u8 *data,
			    unsigned int len)
{
	struct sha256_ce_state *sctx = FUNC4(desc);

	if (!FUNC0())
		return FUNC3(desc, data, len,
				(sha256_block_fn *)sha256_block_data_order);

	sctx->finalize = 0;
	FUNC1();
	FUNC3(desc, data, len,
			      (sha256_block_fn *)sha2_ce_transform);
	FUNC2();

	return 0;
}