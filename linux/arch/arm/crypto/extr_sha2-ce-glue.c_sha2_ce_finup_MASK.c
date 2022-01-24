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
typedef  int /*<<< orphan*/  sha256_block_fn ;

/* Variables and functions */
 int FUNC0 (struct shash_desc*,int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct shash_desc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct shash_desc*,int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct shash_desc*,int /*<<< orphan*/ *) ; 
 scalar_t__ sha2_ce_transform ; 

__attribute__((used)) static int FUNC7(struct shash_desc *desc, const u8 *data,
			 unsigned int len, u8 *out)
{
	if (!FUNC1())
		return FUNC0(desc, data, len, out);

	FUNC2();
	if (len)
		FUNC5(desc, data, len,
				      (sha256_block_fn *)sha2_ce_transform);
	FUNC4(desc, (sha256_block_fn *)sha2_ce_transform);
	FUNC3();

	return FUNC6(desc, out);
}