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
struct twofish_ctx {int dummy; } ;
struct crypto_tfm {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 struct twofish_ctx* FUNC3 (struct crypto_tfm*) ; 

__attribute__((used)) static void FUNC4(struct crypto_tfm *tfm, u8 *out, const u8 *in)
{
	struct twofish_ctx *ctx = FUNC3(tfm);
	const __le32 *src = (const __le32 *)in;
	__le32 *dst = (__le32 *)out;
  
	/* The four 32-bit chunks of the text. */
	u32 a, b, c, d;
	
	/* Temporaries used by the round function. */
	u32 x, y;
	
	/* Input whitening and packing. */
	FUNC1 (0, c, 4);
	FUNC1 (1, d, 5);
	FUNC1 (2, a, 6);
	FUNC1 (3, b, 7);
	
	/* Encryption Feistel cycles. */
	FUNC0 (7);
	FUNC0 (6);
	FUNC0 (5);
	FUNC0 (4);
	FUNC0 (3);
	FUNC0 (2);
	FUNC0 (1);
	FUNC0 (0);

	/* Output whitening and unpacking. */
	FUNC2 (0, a, 0);
	FUNC2 (1, b, 1);
	FUNC2 (2, c, 2);
	FUNC2 (3, d, 3);

}