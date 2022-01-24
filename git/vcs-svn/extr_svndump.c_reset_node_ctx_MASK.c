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
struct TYPE_2__ {int prop_length; int text_length; scalar_t__ prop_delta; scalar_t__ text_delta; int /*<<< orphan*/  dst; scalar_t__ srcRev; int /*<<< orphan*/  src; int /*<<< orphan*/  action; scalar_t__ type; } ;

/* Variables and functions */
 int /*<<< orphan*/  NODEACT_UNKNOWN ; 
 TYPE_1__ node_ctx ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(char *fname)
{
	node_ctx.type = 0;
	node_ctx.action = NODEACT_UNKNOWN;
	node_ctx.prop_length = -1;
	node_ctx.text_length = -1;
	FUNC1(&node_ctx.src);
	node_ctx.srcRev = 0;
	FUNC1(&node_ctx.dst);
	if (fname)
		FUNC0(&node_ctx.dst, fname);
	node_ctx.text_delta = 0;
	node_ctx.prop_delta = 0;
}