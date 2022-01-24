#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  c; } ;
typedef  TYPE_1__ git_hash_sha1_ctx ;
typedef  size_t CC_LONG ;

/* Variables and functions */
 size_t CC_LONG_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

int FUNC2(git_hash_sha1_ctx *ctx, const void *_data, size_t len)
{
	const unsigned char *data = _data;

	FUNC1(ctx);

	while (len > 0) {
		CC_LONG chunk = (len > CC_LONG_MAX) ? CC_LONG_MAX : (CC_LONG)len;

		FUNC0(&ctx->c, data, chunk);

		data += chunk;
		len -= chunk;
	}

	return 0;
}