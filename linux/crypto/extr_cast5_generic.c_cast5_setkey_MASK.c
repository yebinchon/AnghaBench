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
struct cast5_ctx {int rr; int* Km; int* Kr; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct cast5_ctx* FUNC1 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int FUNC5(struct crypto_tfm *tfm, const u8 *key, unsigned int key_len)
{
	struct cast5_ctx *c = FUNC1(tfm);
	int i;
	u32 x[4];
	u32 z[4];
	u32 k[16];
	__be32 p_key[4];

	c->rr = key_len <= 10 ? 1 : 0;

	FUNC4(p_key, 0, 16);
	FUNC3(p_key, key, key_len);


	x[0] = FUNC0(p_key[0]);
	x[1] = FUNC0(p_key[1]);
	x[2] = FUNC0(p_key[2]);
	x[3] = FUNC0(p_key[3]);

	FUNC2(x, z, k);
	for (i = 0; i < 16; i++)
		c->Km[i] = k[i];
	FUNC2(x, z, k);
	for (i = 0; i < 16; i++)
		c->Kr[i] = k[i] & 0x1f;
	return 0;
}