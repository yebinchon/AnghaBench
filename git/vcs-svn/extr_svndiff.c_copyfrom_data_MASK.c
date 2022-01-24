#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {size_t const len; scalar_t__ buf; } ;
struct window {TYPE_1__ data; int /*<<< orphan*/  out; } ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,size_t) ; 
 scalar_t__ FUNC2 (size_t const,size_t) ; 

__attribute__((used)) static int FUNC3(struct window *ctx, size_t *data_pos, size_t nbytes)
{
	const size_t pos = *data_pos;
	if (FUNC2(pos, nbytes) ||
	    pos + nbytes > ctx->data.len)
		return FUNC0("invalid delta: copies unavailable inline data");
	FUNC1(&ctx->out, ctx->data.buf + pos, nbytes);
	*data_pos += nbytes;
	return 0;
}