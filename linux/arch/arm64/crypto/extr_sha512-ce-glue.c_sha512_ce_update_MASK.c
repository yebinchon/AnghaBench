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
typedef  int /*<<< orphan*/  sha512_block_fn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct shash_desc*,int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/ *) ; 
 scalar_t__ sha512_block_data_order ; 
 scalar_t__ sha512_ce_transform ; 

__attribute__((used)) static int FUNC4(struct shash_desc *desc, const u8 *data,
			    unsigned int len)
{
	if (!FUNC0())
		return FUNC3(desc, data, len,
				(sha512_block_fn *)sha512_block_data_order);

	FUNC1();
	FUNC3(desc, data, len,
			      (sha512_block_fn *)sha512_ce_transform);
	FUNC2();

	return 0;
}