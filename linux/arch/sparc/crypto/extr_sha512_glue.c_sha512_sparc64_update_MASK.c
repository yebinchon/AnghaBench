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
struct sha512_state {unsigned int* count; scalar_t__ buf; } ;

/* Variables and functions */
 unsigned int SHA512_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sha512_state*,int /*<<< orphan*/  const*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/  const*,unsigned int) ; 
 struct sha512_state* FUNC2 (struct shash_desc*) ; 

__attribute__((used)) static int FUNC3(struct shash_desc *desc, const u8 *data,
				 unsigned int len)
{
	struct sha512_state *sctx = FUNC2(desc);
	unsigned int partial = sctx->count[0] % SHA512_BLOCK_SIZE;

	/* Handle the fast case right here */
	if (partial + len < SHA512_BLOCK_SIZE) {
		if ((sctx->count[0] += len) < len)
			sctx->count[1]++;
		FUNC1(sctx->buf + partial, data, len);
	} else
		FUNC0(sctx, data, len, partial);

	return 0;
}