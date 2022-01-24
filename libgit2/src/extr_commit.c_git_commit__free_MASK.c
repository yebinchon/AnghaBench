#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct TYPE_3__* body; struct TYPE_3__* summary; struct TYPE_3__* message_encoding; struct TYPE_3__* raw_message; struct TYPE_3__* raw_header; int /*<<< orphan*/  committer; int /*<<< orphan*/  author; int /*<<< orphan*/  parent_ids; } ;
typedef  TYPE_1__ git_commit ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(void *_commit)
{
	git_commit *commit = _commit;

	FUNC1(commit->parent_ids);

	FUNC2(commit->author);
	FUNC2(commit->committer);

	FUNC0(commit->raw_header);
	FUNC0(commit->raw_message);
	FUNC0(commit->message_encoding);
	FUNC0(commit->summary);
	FUNC0(commit->body);

	FUNC0(commit);
}