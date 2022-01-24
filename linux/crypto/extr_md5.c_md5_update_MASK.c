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
typedef  unsigned int u32 ;
struct shash_desc {int dummy; } ;
struct md5_state {int byte_count; char* block; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct md5_state*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/  const*,unsigned int const) ; 
 struct md5_state* FUNC2 (struct shash_desc*) ; 

__attribute__((used)) static int FUNC3(struct shash_desc *desc, const u8 *data, unsigned int len)
{
	struct md5_state *mctx = FUNC2(desc);
	const u32 avail = sizeof(mctx->block) - (mctx->byte_count & 0x3f);

	mctx->byte_count += len;

	if (avail > len) {
		FUNC1((char *)mctx->block + (sizeof(mctx->block) - avail),
		       data, len);
		return 0;
	}

	FUNC1((char *)mctx->block + (sizeof(mctx->block) - avail),
	       data, avail);

	FUNC0(mctx);
	data += avail;
	len -= avail;

	while (len >= sizeof(mctx->block)) {
		FUNC1(mctx->block, data, sizeof(mctx->block));
		FUNC0(mctx);
		data += sizeof(mctx->block);
		len -= sizeof(mctx->block);
	}

	FUNC1(mctx->block, data, len);

	return 0;
}