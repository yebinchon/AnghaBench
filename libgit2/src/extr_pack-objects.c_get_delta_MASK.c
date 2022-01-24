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
struct TYPE_5__ {size_t delta_size; int /*<<< orphan*/  id; TYPE_1__* delta; } ;
typedef  TYPE_2__ git_pobject ;
typedef  int /*<<< orphan*/  git_odb_object ;
typedef  int /*<<< orphan*/  git_odb ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int GIT_EBUFS ; 
 int /*<<< orphan*/  GIT_ERROR_INVALID ; 
 int FUNC0 (void**,size_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(void **out, git_odb *odb, git_pobject *po)
{
	git_odb_object *src = NULL, *trg = NULL;
	size_t delta_size;
	void *delta_buf;
	int error;

	*out = NULL;

	if (FUNC5(&src, odb, &po->delta->id) < 0 ||
	    FUNC5(&trg, odb, &po->id) < 0)
		goto on_error;

	error = FUNC0(&delta_buf, &delta_size,
		FUNC2(src), FUNC4(src),
		FUNC2(trg), FUNC4(trg),
		0);

	if (error < 0 && error != GIT_EBUFS)
		goto on_error;

	if (error == GIT_EBUFS || delta_size != po->delta_size) {
		FUNC1(GIT_ERROR_INVALID, "delta size changed");
		goto on_error;
	}

	*out = delta_buf;

	FUNC3(src);
	FUNC3(trg);
	return 0;

on_error:
	FUNC3(src);
	FUNC3(trg);
	return -1;
}