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
struct TYPE_4__ {int /*<<< orphan*/  url; int /*<<< orphan*/  uuid; } ;
struct TYPE_3__ {int /*<<< orphan*/  author; int /*<<< orphan*/  log; } ;

/* Variables and functions */
 TYPE_2__ dump_ctx ; 
 TYPE_1__ rev_ctx ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(void)
{
	FUNC0(&dump_ctx.uuid);
	FUNC0(&dump_ctx.url);
	FUNC0(&rev_ctx.log);
	FUNC0(&rev_ctx.author);
}