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
struct shash_desc {int dummy; } ;
struct md5_state {int byte_count; scalar_t__ block; int /*<<< orphan*/  hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 
 struct md5_state* FUNC2 (struct shash_desc*) ; 

__attribute__((used)) static int FUNC3(struct shash_desc *desc, const u8 *data,
			unsigned int len)
{
	struct md5_state *sctx = FUNC2(desc);
	const unsigned int offset = sctx->byte_count & 0x3f;
	unsigned int avail = 64 - offset;
	const u8 *src = data;

	sctx->byte_count += len;

	if (avail > len) {
		FUNC0((char *)sctx->block + offset, src, len);
		return 0;
	}

	if (offset) {
		FUNC0((char *)sctx->block + offset, src, avail);
		FUNC1(sctx->hash, (const u8 *)sctx->block, 1);
		len -= avail;
		src += avail;
	}

	if (len > 63) {
		FUNC1(sctx->hash, src, len >> 6);
		src += len & ~0x3f;
		len &= 0x3f;
	}

	FUNC0((char *)sctx->block, src, len);
	return 0;
}