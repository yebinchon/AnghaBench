#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_6__ {int /*<<< orphan*/  symbolic; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; TYPE_1__ target; } ;
typedef  TYPE_2__ git_reference ;

/* Variables and functions */
 scalar_t__ GIT_REFERENCE_SYMBOLIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__**,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC4(git_repository *repo, const char *path, void *payload)
{
	git_reference *branch = (git_reference *) payload;
	git_reference *head = NULL;
	int equal = 0;

	if (FUNC1(&head, repo, path) < 0 ||
		FUNC3(head) != GIT_REFERENCE_SYMBOLIC)
		goto done;

	equal = !FUNC0(head->target.symbolic, branch->name);

done:
	FUNC2(head);
	return equal;
}