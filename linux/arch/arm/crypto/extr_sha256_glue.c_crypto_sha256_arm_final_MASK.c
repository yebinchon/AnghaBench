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
 int /*<<< orphan*/  FUNC0 (struct shash_desc*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct shash_desc*,int /*<<< orphan*/ *) ; 
 scalar_t__ sha256_block_data_order ; 

__attribute__((used)) static int FUNC2(struct shash_desc *desc, u8 *out)
{
	FUNC0(desc,
				(sha256_block_fn *)sha256_block_data_order);
	return FUNC1(desc, out);
}