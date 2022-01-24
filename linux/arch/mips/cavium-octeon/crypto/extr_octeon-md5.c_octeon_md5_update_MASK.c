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
typedef  unsigned int u32 ;
struct shash_desc {int dummy; } ;
struct octeon_cop2_state {int dummy; } ;
struct md5_state {int byte_count; char const* block; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,unsigned int const) ; 
 int /*<<< orphan*/  FUNC1 (struct octeon_cop2_state*,unsigned long) ; 
 unsigned long FUNC2 (struct octeon_cop2_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct md5_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct md5_state*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 struct md5_state* FUNC6 (struct shash_desc*) ; 

__attribute__((used)) static int FUNC7(struct shash_desc *desc, const u8 *data,
			     unsigned int len)
{
	struct md5_state *mctx = FUNC6(desc);
	const u32 avail = sizeof(mctx->block) - (mctx->byte_count & 0x3f);
	struct octeon_cop2_state state;
	unsigned long flags;

	mctx->byte_count += len;

	if (avail > len) {
		FUNC0((char *)mctx->block + (sizeof(mctx->block) - avail),
		       data, len);
		return 0;
	}

	FUNC0((char *)mctx->block + (sizeof(mctx->block) - avail), data,
	       avail);

	flags = FUNC2(&state);
	FUNC4(mctx);

	FUNC5(mctx->block);
	data += avail;
	len -= avail;

	while (len >= sizeof(mctx->block)) {
		FUNC5(data);
		data += sizeof(mctx->block);
		len -= sizeof(mctx->block);
	}

	FUNC3(mctx);
	FUNC1(&state, flags);

	FUNC0(mctx->block, data, len);

	return 0;
}