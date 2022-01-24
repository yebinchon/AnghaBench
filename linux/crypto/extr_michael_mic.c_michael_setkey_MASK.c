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
struct michael_mic_ctx {void* r; void* l; } ;
struct crypto_shash {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int EINVAL ; 
 struct michael_mic_ctx* FUNC0 (struct crypto_shash*) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_shash*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/  const) ; 

__attribute__((used)) static int FUNC3(struct crypto_shash *tfm, const u8 *key,
			  unsigned int keylen)
{
	struct michael_mic_ctx *mctx = FUNC0(tfm);

	const __le32 *data = (const __le32 *)key;

	if (keylen != 8) {
		FUNC1(tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
		return -EINVAL;
	}

	mctx->l = FUNC2(data[0]);
	mctx->r = FUNC2(data[1]);
	return 0;
}