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
struct xxhash64_tfm_ctx {int /*<<< orphan*/  seed; } ;
struct shash_desc {int /*<<< orphan*/  tfm; } ;

/* Variables and functions */
 struct xxhash64_tfm_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct shash_desc *desc, const u8 *data,
			 unsigned int length, u8 *out)
{
	struct xxhash64_tfm_ctx *tctx = FUNC0(desc->tfm);

	FUNC1(FUNC2(data, length, tctx->seed), out);

	return 0;
}