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
typedef  int /*<<< orphan*/  u64 ;
struct shash_desc {int dummy; } ;
struct sha1_state {int count; int /*<<< orphan*/ * state; scalar_t__ buffer; } ;
typedef  int /*<<< orphan*/  __be64 ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sha1_state*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 struct sha1_state* FUNC5 (struct shash_desc*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int FUNC8(struct shash_desc *desc, u8 *out)
{
	struct sha1_state *sctx = FUNC5(desc);
	const unsigned int offset = sctx->count & 0x3f;
	char *p = (char *)sctx->buffer + offset;
	int padlen;
	__be64 *pbits = (__be64 *)(((char *)&sctx->buffer) + 56);
	__be32 *dst = (__be32 *)out;

	padlen = 55 - offset;
	*p++ = 0x80;

	FUNC6();

	if (padlen < 0) {
		FUNC2(p, 0x00, padlen + sizeof (u64));
		FUNC4(sctx->state, sctx->buffer, 1);
		p = (char *)sctx->buffer;
		padlen = 56;
	}

	FUNC2(p, 0, padlen);
	*pbits = FUNC1(sctx->count << 3);
	FUNC4(sctx->state, sctx->buffer, 1);

	FUNC7();

	dst[0] = FUNC0(sctx->state[0]);
	dst[1] = FUNC0(sctx->state[1]);
	dst[2] = FUNC0(sctx->state[2]);
	dst[3] = FUNC0(sctx->state[3]);
	dst[4] = FUNC0(sctx->state[4]);

	FUNC3(sctx);
	return 0;
}