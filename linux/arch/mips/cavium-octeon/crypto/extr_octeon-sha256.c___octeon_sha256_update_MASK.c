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
struct sha256_state {unsigned int count; int /*<<< orphan*/ * buf; } ;

/* Variables and functions */
 unsigned int SHA256_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC2(struct sha256_state *sctx, const u8 *data,
				   unsigned int len)
{
	unsigned int partial;
	unsigned int done;
	const u8 *src;

	partial = sctx->count % SHA256_BLOCK_SIZE;
	sctx->count += len;
	done = 0;
	src = data;

	if ((partial + len) >= SHA256_BLOCK_SIZE) {
		if (partial) {
			done = -partial;
			FUNC0(sctx->buf + partial, data,
			       done + SHA256_BLOCK_SIZE);
			src = sctx->buf;
		}

		do {
			FUNC1(src);
			done += SHA256_BLOCK_SIZE;
			src = data + done;
		} while (done + SHA256_BLOCK_SIZE <= len);

		partial = 0;
	}
	FUNC0(sctx->buf + partial, src, len - done);
}