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
struct md5_state {unsigned int byte_count; scalar_t__ block; } ;

/* Variables and functions */
 unsigned int MD5_HMAC_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct md5_state*,int /*<<< orphan*/  const*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int) ; 
 struct md5_state* FUNC2 (struct shash_desc*) ; 

__attribute__((used)) static int FUNC3(struct shash_desc *desc, const u8 *data,
			      unsigned int len)
{
	struct md5_state *sctx = FUNC2(desc);
	unsigned int partial = sctx->byte_count % MD5_HMAC_BLOCK_SIZE;

	/* Handle the fast case right here */
	if (partial + len < MD5_HMAC_BLOCK_SIZE) {
		sctx->byte_count += len;
		FUNC1((u8 *)sctx->block + partial, data, len);
	} else
		FUNC0(sctx, data, len, partial);

	return 0;
}