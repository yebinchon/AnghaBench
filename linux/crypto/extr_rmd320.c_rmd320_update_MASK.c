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
struct rmd320_ctx {int byte_count; char* buffer; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/  const*,unsigned int const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct rmd320_ctx* FUNC2 (struct shash_desc*) ; 

__attribute__((used)) static int FUNC3(struct shash_desc *desc, const u8 *data,
			 unsigned int len)
{
	struct rmd320_ctx *rctx = FUNC2(desc);
	const u32 avail = sizeof(rctx->buffer) - (rctx->byte_count & 0x3f);

	rctx->byte_count += len;

	/* Enough space in buffer? If so copy and we're done */
	if (avail > len) {
		FUNC0((char *)rctx->buffer + (sizeof(rctx->buffer) - avail),
		       data, len);
		goto out;
	}

	FUNC0((char *)rctx->buffer + (sizeof(rctx->buffer) - avail),
	       data, avail);

	FUNC1(rctx->state, rctx->buffer);
	data += avail;
	len -= avail;

	while (len >= sizeof(rctx->buffer)) {
		FUNC0(rctx->buffer, data, sizeof(rctx->buffer));
		FUNC1(rctx->state, rctx->buffer);
		data += sizeof(rctx->buffer);
		len -= sizeof(rctx->buffer);
	}

	FUNC0(rctx->buffer, data, len);

out:
	return 0;
}