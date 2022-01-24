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
struct shash_desc {int /*<<< orphan*/  tfm; } ;
struct chksum_ctx {int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/ *) ; 
 struct chksum_ctx* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct shash_desc *desc, const u8 *data,
			 unsigned int length, u8 *out)
{
	struct chksum_ctx *mctx = FUNC1(desc->tfm);

	return FUNC0(mctx->key, data, length, out);
}