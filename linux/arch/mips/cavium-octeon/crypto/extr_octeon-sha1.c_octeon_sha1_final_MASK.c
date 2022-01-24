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
struct sha1_state {int count; int /*<<< orphan*/ * state; } ;
struct octeon_cop2_state {int dummy; } ;
typedef  int /*<<< orphan*/  bits ;
typedef  int /*<<< orphan*/  __be64 ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sha1_state*,int const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct sha1_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct octeon_cop2_state*,unsigned long) ; 
 unsigned long FUNC5 (struct octeon_cop2_state*) ; 
 int /*<<< orphan*/  FUNC6 (struct sha1_state*) ; 
 int /*<<< orphan*/  FUNC7 (struct sha1_state*) ; 
 struct sha1_state* FUNC8 (struct shash_desc*) ; 

__attribute__((used)) static int FUNC9(struct shash_desc *desc, u8 *out)
{
	struct sha1_state *sctx = FUNC8(desc);
	static const u8 padding[64] = { 0x80, };
	struct octeon_cop2_state state;
	__be32 *dst = (__be32 *)out;
	unsigned int pad_len;
	unsigned long flags;
	unsigned int index;
	__be64 bits;
	int i;

	/* Save number of bits. */
	bits = FUNC2(sctx->count << 3);

	/* Pad out to 56 mod 64. */
	index = sctx->count & 0x3f;
	pad_len = (index < 56) ? (56 - index) : ((64+56) - index);

	flags = FUNC5(&state);
	FUNC7(sctx);

	FUNC0(sctx, padding, pad_len);

	/* Append length (before padding). */
	FUNC0(sctx, (const u8 *)&bits, sizeof(bits));

	FUNC6(sctx);
	FUNC4(&state, flags);

	/* Store state in digest */
	for (i = 0; i < 5; i++)
		dst[i] = FUNC1(sctx->state[i]);

	/* Zeroize sensitive information. */
	FUNC3(sctx, 0, sizeof(*sctx));

	return 0;
}