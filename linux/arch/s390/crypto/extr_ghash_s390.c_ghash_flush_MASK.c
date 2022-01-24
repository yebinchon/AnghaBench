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
struct ghash_desc_ctx {int bytes; int /*<<< orphan*/ * buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPACF_KIMD_GHASH ; 
 int GHASH_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ghash_desc_ctx*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct ghash_desc_ctx *dctx)
{
	u8 *buf = dctx->buffer;

	if (dctx->bytes) {
		u8 *pos = buf + (GHASH_BLOCK_SIZE - dctx->bytes);

		FUNC1(pos, 0, dctx->bytes);
		FUNC0(CPACF_KIMD_GHASH, dctx, buf, GHASH_BLOCK_SIZE);
		dctx->bytes = 0;
	}

	return 0;
}