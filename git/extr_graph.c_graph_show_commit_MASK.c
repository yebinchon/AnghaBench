#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct git_graph {TYPE_1__* revs; } ;
struct TYPE_5__ {int /*<<< orphan*/  file; } ;
struct TYPE_4__ {TYPE_2__ diffopt; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 TYPE_2__* default_diffopt ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct git_graph*) ; 
 int FUNC2 (struct git_graph*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct git_graph*) ; 
 int /*<<< orphan*/  FUNC5 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,int /*<<< orphan*/ ) ; 

void FUNC8(struct git_graph *graph)
{
	struct strbuf msgbuf = STRBUF_INIT;
	int shown_commit_line = 0;

	FUNC3(default_diffopt);

	if (!graph)
		return;

	/*
	 * When showing a diff of a merge against each of its parents, we
	 * are called once for each parent without graph_update having been
	 * called.  In this case, simply output a single padding line.
	 */
	if (FUNC1(graph)) {
		FUNC4(graph);
		shown_commit_line = 1;
	}

	while (!shown_commit_line && !FUNC1(graph)) {
		shown_commit_line = FUNC2(graph, &msgbuf);
		FUNC0(msgbuf.buf, sizeof(char), msgbuf.len,
			graph->revs->diffopt.file);
		if (!shown_commit_line) {
			FUNC5('\n', graph->revs->diffopt.file);
			FUNC3(&graph->revs->diffopt);
		}
		FUNC7(&msgbuf, 0);
	}

	FUNC6(&msgbuf);
}