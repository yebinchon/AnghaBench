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
struct context {int /*<<< orphan*/ * out; TYPE_2__* opts; } ;
struct bufferevent {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  ssl; } ;
struct TYPE_4__ {TYPE_1__ extra; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufferevent*,short,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct bufferevent *bev, short what, void *arg)
{
	struct context *ctx = arg;
	if (!FUNC0(bev, what, ctx->opts->extra.ssl, 1))
		return;
	ctx->out = NULL;
}