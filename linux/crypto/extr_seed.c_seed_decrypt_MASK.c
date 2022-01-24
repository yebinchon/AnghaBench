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
typedef  int /*<<< orphan*/  u32 ;
struct seed_ctx {int /*<<< orphan*/ * keysched; } ;
struct crypto_tfm {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct seed_ctx* FUNC3 (struct crypto_tfm*) ; 

__attribute__((used)) static void FUNC4(struct crypto_tfm *tfm, u8 *out, const u8 *in)
{
	const struct seed_ctx *ctx = FUNC3(tfm);
	const __be32 *src = (const __be32 *)in;
	__be32 *dst = (__be32 *)out;
	u32 x1, x2, x3, x4, t0, t1;
	const u32 *ks = ctx->keysched;

	x1 = FUNC1(src[0]);
	x2 = FUNC1(src[1]);
	x3 = FUNC1(src[2]);
	x4 = FUNC1(src[3]);

	FUNC0(x1, x2, x3, x4, 30);
	FUNC0(x3, x4, x1, x2, 28);
	FUNC0(x1, x2, x3, x4, 26);
	FUNC0(x3, x4, x1, x2, 24);
	FUNC0(x1, x2, x3, x4, 22);
	FUNC0(x3, x4, x1, x2, 20);
	FUNC0(x1, x2, x3, x4, 18);
	FUNC0(x3, x4, x1, x2, 16);
	FUNC0(x1, x2, x3, x4, 14);
	FUNC0(x3, x4, x1, x2, 12);
	FUNC0(x1, x2, x3, x4, 10);
	FUNC0(x3, x4, x1, x2, 8);
	FUNC0(x1, x2, x3, x4, 6);
	FUNC0(x3, x4, x1, x2, 4);
	FUNC0(x1, x2, x3, x4, 2);
	FUNC0(x3, x4, x1, x2, 0);

	dst[0] = FUNC2(x3);
	dst[1] = FUNC2(x4);
	dst[2] = FUNC2(x1);
	dst[3] = FUNC2(x2);
}