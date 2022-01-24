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
struct TYPE_2__ {int /*<<< orphan*/  buf; } ;
struct tr2tls_thread_ctx {int /*<<< orphan*/  nr_open_regions; TYPE_1__ thread_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 struct tr2tls_thread_ctx* FUNC1 () ; 

void FUNC2(void)
{
	struct tr2tls_thread_ctx *ctx = FUNC1();

	if (!ctx->nr_open_regions)
		FUNC0("no open regions in thread '%s'", ctx->thread_name.buf);

	ctx->nr_open_regions--;
}