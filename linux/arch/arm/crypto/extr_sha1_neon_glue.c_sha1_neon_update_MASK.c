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
struct sha1_state {unsigned int count; } ;
typedef  int /*<<< orphan*/  sha1_block_fn ;

/* Variables and functions */
 unsigned int SHA1_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct shash_desc*,int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/ *) ; 
 scalar_t__ sha1_transform_neon ; 
 int FUNC4 (struct shash_desc*,int /*<<< orphan*/  const*,unsigned int) ; 
 struct sha1_state* FUNC5 (struct shash_desc*) ; 

__attribute__((used)) static int FUNC6(struct shash_desc *desc, const u8 *data,
			  unsigned int len)
{
	struct sha1_state *sctx = FUNC5(desc);

	if (!FUNC0() ||
	    (sctx->count % SHA1_BLOCK_SIZE) + len < SHA1_BLOCK_SIZE)
		return FUNC4(desc, data, len);

	FUNC1();
	FUNC3(desc, data, len,
			    (sha1_block_fn *)sha1_transform_neon);
	FUNC2();

	return 0;
}