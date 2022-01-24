#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct log_state {int hide; int /*<<< orphan*/  walker; int /*<<< orphan*/  sorting; int /*<<< orphan*/  repo; } ;
typedef  int /*<<< orphan*/  git_object ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct log_state *s, git_object *obj, int hide)
{
	hide = s->hide ^ hide;

	/** Create revwalker on demand if it doesn't already exist. */
	if (!s->walker) {
		FUNC0(FUNC4(&s->walker, s->repo),
			"Could not create revision walker", NULL);
		FUNC7(s->walker, s->sorting);
	}

	if (!obj)
		FUNC0(FUNC6(s->walker),
			"Could not find repository HEAD", NULL);
	else if (hide)
		FUNC0(FUNC3(s->walker, FUNC2(obj)),
			"Reference does not refer to a commit", NULL);
	else
		FUNC0(FUNC5(s->walker, FUNC2(obj)),
			"Reference does not refer to a commit", NULL);

	FUNC1(obj);
}