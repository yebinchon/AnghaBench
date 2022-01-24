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
struct sha256_state {int count; scalar_t__ buf; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 unsigned int MAX_BYTES ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/  const*,unsigned int const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 
 struct sha256_state* FUNC2 (struct shash_desc*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct shash_desc *desc, const u8 *data,
			unsigned int len)
{
	struct sha256_state *sctx = FUNC2(desc);
	const unsigned int offset = sctx->count & 0x3f;
	const unsigned int avail = 64 - offset;
	unsigned int bytes;
	const u8 *src = data;

	if (avail > len) {
		sctx->count += len;
		FUNC0((char *)sctx->buf + offset, src, len);
		return 0;
	}

	sctx->count += len;

	if (offset) {
		FUNC0((char *)sctx->buf + offset, src, avail);

		FUNC3();
		FUNC1(sctx->state, (const u8 *)sctx->buf, 1);
		FUNC4();

		len -= avail;
		src += avail;
	}

	while (len > 63) {
		/* cut input data into smaller blocks */
		bytes = (len > MAX_BYTES) ? MAX_BYTES : len;
		bytes = bytes & ~0x3f;

		FUNC3();
		FUNC1(sctx->state, src, bytes >> 6);
		FUNC4();

		src += bytes;
		len -= bytes;
	};

	FUNC0((char *)sctx->buf, src, len);
	return 0;
}