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
typedef  int u32 ;
struct shash_desc {int dummy; } ;
struct sha1_state {int count; int /*<<< orphan*/ * state; } ;
typedef  int /*<<< orphan*/  bits ;
typedef  int /*<<< orphan*/  __be64 ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sha1_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct shash_desc*,int const*,int) ; 
 struct sha1_state* FUNC4 (struct shash_desc*) ; 

__attribute__((used)) static int FUNC5(struct shash_desc *desc, u8 *out)
{
	struct sha1_state *sctx = FUNC4(desc);
	__be32 *dst = (__be32 *)out;
	u32 i, index, padlen;
	__be64 bits;
	static const u8 padding[64] = { 0x80, };

	bits = FUNC1(sctx->count << 3);

	/* Pad out to 56 mod 64 */
	index = sctx->count & 0x3f;
	padlen = (index < 56) ? (56 - index) : ((64+56) - index);
	FUNC3(desc, padding, padlen);

	/* Append length */
	FUNC3(desc, (const u8 *)&bits, sizeof(bits));

	/* Store state in digest */
	for (i = 0; i < 5; i++)
		dst[i] = FUNC0(sctx->state[i]);

	/* Wipe context */
	FUNC2(sctx, 0, sizeof *sctx);

	return 0;
}