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
struct poly1305_desc_ctx {int sset; int rset; void** s; int /*<<< orphan*/  r; } ;

/* Variables and functions */
 unsigned int POLY1305_BLOCK_SIZE ; 
 void* FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

unsigned int FUNC2(struct poly1305_desc_ctx *dctx,
					const u8 *src, unsigned int srclen)
{
	if (!dctx->sset) {
		if (!dctx->rset && srclen >= POLY1305_BLOCK_SIZE) {
			FUNC1(&dctx->r, src);
			src += POLY1305_BLOCK_SIZE;
			srclen -= POLY1305_BLOCK_SIZE;
			dctx->rset = true;
		}
		if (srclen >= POLY1305_BLOCK_SIZE) {
			dctx->s[0] = FUNC0(src +  0);
			dctx->s[1] = FUNC0(src +  4);
			dctx->s[2] = FUNC0(src +  8);
			dctx->s[3] = FUNC0(src + 12);
			src += POLY1305_BLOCK_SIZE;
			srclen -= POLY1305_BLOCK_SIZE;
			dctx->sset = true;
		}
	}
	return srclen;
}