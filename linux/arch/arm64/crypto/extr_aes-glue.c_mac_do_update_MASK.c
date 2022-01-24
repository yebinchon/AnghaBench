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
struct crypto_aes_ctx {int key_length; int /*<<< orphan*/  key_enc; } ;

/* Variables and functions */
 int /*<<< orphan*/  AES_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct crypto_aes_ctx*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(struct crypto_aes_ctx *ctx, u8 const in[], int blocks,
			  u8 dg[], int enc_before, int enc_after)
{
	int rounds = 6 + ctx->key_length / 4;

	if (FUNC2()) {
		FUNC4();
		FUNC1(in, ctx->key_enc, rounds, blocks, dg, enc_before,
			       enc_after);
		FUNC5();
	} else {
		if (enc_before)
			FUNC0(ctx, dg, dg);

		while (blocks--) {
			FUNC3(dg, in, AES_BLOCK_SIZE);
			in += AES_BLOCK_SIZE;

			if (blocks || enc_after)
				FUNC0(ctx, dg, dg);
		}
	}
}