#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct window {TYPE_1__* in; int /*<<< orphan*/  out; } ;
struct TYPE_4__ {scalar_t__ buf; } ;
struct TYPE_3__ {size_t width; TYPE_2__ buf; } ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char const**,size_t*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,size_t) ; 
 scalar_t__ FUNC3 (size_t,size_t) ; 

__attribute__((used)) static int FUNC4(struct window *ctx, const char **instructions,
			   size_t nbytes, const char *insns_end)
{
	size_t offset;
	if (FUNC1(instructions, &offset, insns_end))
		return -1;
	if (FUNC3(offset, nbytes) ||
	    offset + nbytes > ctx->in->width)
		return FUNC0("invalid delta: copies source data outside view");
	FUNC2(&ctx->out, ctx->in->buf.buf + offset, nbytes);
	return 0;
}