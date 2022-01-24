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
typedef  int /*<<< orphan*/  u32 ;
struct camellia_ctx {unsigned int key_length; int /*<<< orphan*/  key_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (unsigned char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char const*,int /*<<< orphan*/ ) ; 

int FUNC3(struct camellia_ctx *cctx, const unsigned char *key,
		      unsigned int key_len, u32 *flags)
{
	if (key_len != 16 && key_len != 24 && key_len != 32) {
		*flags |= CRYPTO_TFM_RES_BAD_KEY_LEN;
		return -EINVAL;
	}

	cctx->key_length = key_len;

	switch (key_len) {
	case 16:
		FUNC0(key, cctx->key_table);
		break;
	case 24:
		FUNC1(key, cctx->key_table);
		break;
	case 32:
		FUNC2(key, cctx->key_table);
		break;
	}

	return 0;
}