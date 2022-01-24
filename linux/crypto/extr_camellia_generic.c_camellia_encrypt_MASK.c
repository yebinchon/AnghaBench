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
struct crypto_tfm {int dummy; } ;
struct camellia_ctx {int key_length; int /*<<< orphan*/  key_table; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct camellia_ctx* FUNC3 (struct crypto_tfm*) ; 

__attribute__((used)) static void FUNC4(struct crypto_tfm *tfm, u8 *out, const u8 *in)
{
	const struct camellia_ctx *cctx = FUNC3(tfm);
	const __be32 *src = (const __be32 *)in;
	__be32 *dst = (__be32 *)out;
	unsigned int max;

	u32 tmp[4];

	tmp[0] = FUNC0(src[0]);
	tmp[1] = FUNC0(src[1]);
	tmp[2] = FUNC0(src[2]);
	tmp[3] = FUNC0(src[3]);

	if (cctx->key_length == 16)
		max = 24;
	else
		max = 32; /* for key lengths of 24 and 32 */

	FUNC1(cctx->key_table, tmp, max);

	/* do_encrypt returns 0,1 swapped with 2,3 */
	dst[0] = FUNC2(tmp[2]);
	dst[1] = FUNC2(tmp[3]);
	dst[2] = FUNC2(tmp[0]);
	dst[3] = FUNC2(tmp[1]);
}