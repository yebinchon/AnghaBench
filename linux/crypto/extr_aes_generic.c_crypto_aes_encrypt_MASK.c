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
typedef  int u32 ;
struct crypto_tfm {int dummy; } ;
struct crypto_aes_ctx {int* key_enc; int key_length; } ;

/* Variables and functions */
 struct crypto_aes_ctx* FUNC0 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,int const*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int const*) ; 
 int FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct crypto_tfm *tfm, u8 *out, const u8 *in)
{
	const struct crypto_aes_ctx *ctx = FUNC0(tfm);
	u32 b0[4], b1[4];
	const u32 *kp = ctx->key_enc + 4;
	const int key_len = ctx->key_length;

	b0[0] = ctx->key_enc[0] ^ FUNC3(in);
	b0[1] = ctx->key_enc[1] ^ FUNC3(in + 4);
	b0[2] = ctx->key_enc[2] ^ FUNC3(in + 8);
	b0[3] = ctx->key_enc[3] ^ FUNC3(in + 12);

	if (key_len > 24) {
		FUNC2(b1, b0, kp);
		FUNC2(b0, b1, kp);
	}

	if (key_len > 16) {
		FUNC2(b1, b0, kp);
		FUNC2(b0, b1, kp);
	}

	FUNC2(b1, b0, kp);
	FUNC2(b0, b1, kp);
	FUNC2(b1, b0, kp);
	FUNC2(b0, b1, kp);
	FUNC2(b1, b0, kp);
	FUNC2(b0, b1, kp);
	FUNC2(b1, b0, kp);
	FUNC2(b0, b1, kp);
	FUNC2(b1, b0, kp);
	FUNC1(b0, b1, kp);

	FUNC4(b0[0], out);
	FUNC4(b0[1], out + 4);
	FUNC4(b0[2], out + 8);
	FUNC4(b0[3], out + 12);
}