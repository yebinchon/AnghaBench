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
struct tea_ctx {int* KEY; } ;
struct crypto_tfm {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 scalar_t__ TEA_DELTA ; 
 int TEA_ROUNDS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct tea_ctx* FUNC1 (struct crypto_tfm*) ; 
 int FUNC2 (int /*<<< orphan*/  const) ; 

__attribute__((used)) static void FUNC3(struct crypto_tfm *tfm, u8 *dst, const u8 *src)
{
	u32 y, z, n, sum = 0;
	u32 k0, k1, k2, k3;
	struct tea_ctx *ctx = FUNC1(tfm);
	const __le32 *in = (const __le32 *)src;
	__le32 *out = (__le32 *)dst;

	y = FUNC2(in[0]);
	z = FUNC2(in[1]);

	k0 = ctx->KEY[0];
	k1 = ctx->KEY[1];
	k2 = ctx->KEY[2];
	k3 = ctx->KEY[3];

	n = TEA_ROUNDS;

	while (n-- > 0) {
		sum += TEA_DELTA;
		y += ((z << 4) + k0) ^ (z + sum) ^ ((z >> 5) + k1);
		z += ((y << 4) + k2) ^ (y + sum) ^ ((y >> 5) + k3);
	}
	
	out[0] = FUNC0(y);
	out[1] = FUNC0(z);
}