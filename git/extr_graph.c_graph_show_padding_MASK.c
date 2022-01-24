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
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct git_graph {TYPE_2__* revs; } ;
struct TYPE_3__ {int /*<<< orphan*/  file; } ;
struct TYPE_4__ {TYPE_1__ diffopt; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  default_diffopt ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct git_graph*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 

void FUNC4(struct git_graph *graph)
{
	struct strbuf msgbuf = STRBUF_INIT;

	FUNC2(default_diffopt);

	if (!graph)
		return;

	FUNC1(graph, &msgbuf);
	FUNC0(msgbuf.buf, sizeof(char), msgbuf.len, graph->revs->diffopt.file);
	FUNC3(&msgbuf);
}