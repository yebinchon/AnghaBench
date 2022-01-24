#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  url; int /*<<< orphan*/  uuid; } ;
struct TYPE_5__ {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct TYPE_4__ {int /*<<< orphan*/  note; int /*<<< orphan*/  author; int /*<<< orphan*/  log; } ;

/* Variables and functions */
 TYPE_3__ dump_ctx ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_2__ node_ctx ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__ rev_ctx ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC5(int report_fd)
{
	FUNC0(report_fd);
	FUNC4(&dump_ctx.uuid, 4096);
	FUNC4(&dump_ctx.url, 4096);
	FUNC4(&rev_ctx.log, 4096);
	FUNC4(&rev_ctx.author, 4096);
	FUNC4(&rev_ctx.note, 4096);
	FUNC4(&node_ctx.src, 4096);
	FUNC4(&node_ctx.dst, 4096);
	FUNC1(NULL);
	FUNC3(0);
	FUNC2(NULL);
	return;
}