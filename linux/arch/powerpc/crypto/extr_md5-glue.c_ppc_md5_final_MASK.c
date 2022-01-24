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
typedef  char u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct shash_desc {int dummy; } ;
struct md5_state {int byte_count; int /*<<< orphan*/ * hash; scalar_t__ block; } ;
typedef  int /*<<< orphan*/  __le64 ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct md5_state*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int) ; 
 struct md5_state* FUNC5 (struct shash_desc*) ; 

__attribute__((used)) static int FUNC6(struct shash_desc *desc, u8 *out)
{
	struct md5_state *sctx = FUNC5(desc);
	const unsigned int offset = sctx->byte_count & 0x3f;
	const u8 *src = (const u8 *)sctx->block;
	u8 *p = (u8 *)src + offset;
	int padlen = 55 - offset;
	__le64 *pbits = (__le64 *)((char *)sctx->block + 56);
	__le32 *dst = (__le32 *)out;

	*p++ = 0x80;

	if (padlen < 0) {
		FUNC2(p, 0x00, padlen + sizeof (u64));
		FUNC4(sctx->hash, src, 1);
		p = (char *)sctx->block;
		padlen = 56;
	}

	FUNC2(p, 0, padlen);
	*pbits = FUNC1(sctx->byte_count << 3);
	FUNC4(sctx->hash, src, 1);

	dst[0] = FUNC0(sctx->hash[0]);
	dst[1] = FUNC0(sctx->hash[1]);
	dst[2] = FUNC0(sctx->hash[2]);
	dst[3] = FUNC0(sctx->hash[3]);

	FUNC3(sctx);
	return 0;
}