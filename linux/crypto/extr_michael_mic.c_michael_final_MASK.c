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
typedef  int u8 ;
struct shash_desc {int dummy; } ;
struct michael_mic_desc_ctx {int* pending; int pending_len; int l; int r; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 struct michael_mic_desc_ctx* FUNC2 (struct shash_desc*) ; 

__attribute__((used)) static int FUNC3(struct shash_desc *desc, u8 *out)
{
	struct michael_mic_desc_ctx *mctx = FUNC2(desc);
	u8 *data = mctx->pending;
	__le32 *dst = (__le32 *)out;

	/* Last block and padding (0x5a, 4..7 x 0) */
	switch (mctx->pending_len) {
	case 0:
		mctx->l ^= 0x5a;
		break;
	case 1:
		mctx->l ^= data[0] | 0x5a00;
		break;
	case 2:
		mctx->l ^= data[0] | (data[1] << 8) | 0x5a0000;
		break;
	case 3:
		mctx->l ^= data[0] | (data[1] << 8) | (data[2] << 16) |
			0x5a000000;
		break;
	}
	FUNC1(mctx->l, mctx->r);
	/* l ^= 0; */
	FUNC1(mctx->l, mctx->r);

	dst[0] = FUNC0(mctx->l);
	dst[1] = FUNC0(mctx->r);

	return 0;
}