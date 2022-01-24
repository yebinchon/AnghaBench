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
typedef  int u8 ;
struct shash_desc {int dummy; } ;
struct sha512_state {int* count; int* state; } ;
struct octeon_cop2_state {int dummy; } ;
typedef  int /*<<< orphan*/  bits ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sha512_state*,int const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sha512_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct octeon_cop2_state*,unsigned long) ; 
 unsigned long FUNC4 (struct octeon_cop2_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct sha512_state*) ; 
 int /*<<< orphan*/  FUNC6 (struct sha512_state*) ; 
 struct sha512_state* FUNC7 (struct shash_desc*) ; 

__attribute__((used)) static int FUNC8(struct shash_desc *desc, u8 *hash)
{
	struct sha512_state *sctx = FUNC7(desc);
	static u8 padding[128] = { 0x80, };
	struct octeon_cop2_state state;
	__be64 *dst = (__be64 *)hash;
	unsigned int pad_len;
	unsigned long flags;
	unsigned int index;
	__be64 bits[2];
	int i;

	/* Save number of bits. */
	bits[1] = FUNC1(sctx->count[0] << 3);
	bits[0] = FUNC1(sctx->count[1] << 3 | sctx->count[0] >> 61);

	/* Pad out to 112 mod 128. */
	index = sctx->count[0] & 0x7f;
	pad_len = (index < 112) ? (112 - index) : ((128+112) - index);

	flags = FUNC4(&state);
	FUNC6(sctx);

	FUNC0(sctx, padding, pad_len);

	/* Append length (before padding). */
	FUNC0(sctx, (const u8 *)bits, sizeof(bits));

	FUNC5(sctx);
	FUNC3(&state, flags);

	/* Store state in digest. */
	for (i = 0; i < 8; i++)
		dst[i] = FUNC1(sctx->state[i]);

	/* Zeroize sensitive information. */
	FUNC2(sctx, 0, sizeof(struct sha512_state));

	return 0;
}