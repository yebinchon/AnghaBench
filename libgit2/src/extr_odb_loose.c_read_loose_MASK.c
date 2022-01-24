#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  type; scalar_t__ len; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ git_rawobj ;
struct TYPE_14__ {int /*<<< orphan*/  size; scalar_t__ ptr; } ;
typedef  TYPE_2__ git_buf ;

/* Variables and functions */
 TYPE_2__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_OBJECT_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*,TYPE_2__*) ; 
 int FUNC6 (TYPE_1__*,TYPE_2__*) ; 

__attribute__((used)) static int FUNC7(git_rawobj *out, git_buf *loc)
{
	int error;
	git_buf obj = GIT_BUF_INIT;

	FUNC0(out && loc);

	if (FUNC2(loc))
		return -1;

	out->data = NULL;
	out->len = 0;
	out->type = GIT_OBJECT_INVALID;

	if ((error = FUNC3(&obj, loc->ptr)) < 0)
		goto done;

	if (!FUNC4((unsigned char *)obj.ptr, obj.size))
		error = FUNC5(out, &obj);
	else
		error = FUNC6(out, &obj);

done:
	FUNC1(&obj);
	return error;
}