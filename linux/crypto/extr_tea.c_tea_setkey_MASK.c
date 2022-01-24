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
struct tea_ctx {void** KEY; } ;
struct crypto_tfm {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 struct tea_ctx* FUNC0 (struct crypto_tfm*) ; 
 void* FUNC1 (int /*<<< orphan*/  const) ; 

__attribute__((used)) static int FUNC2(struct crypto_tfm *tfm, const u8 *in_key,
		      unsigned int key_len)
{
	struct tea_ctx *ctx = FUNC0(tfm);
	const __le32 *key = (const __le32 *)in_key;

	ctx->KEY[0] = FUNC1(key[0]);
	ctx->KEY[1] = FUNC1(key[1]);
	ctx->KEY[2] = FUNC1(key[2]);
	ctx->KEY[3] = FUNC1(key[3]);

	return 0; 

}