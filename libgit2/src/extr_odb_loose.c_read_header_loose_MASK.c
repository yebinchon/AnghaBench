#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  obj ;
struct TYPE_8__ {int /*<<< orphan*/  type; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ git_rawobj ;
struct TYPE_9__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_2__ git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_ZLIB ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (int,unsigned char*,int) ; 
 int FUNC8 (TYPE_1__*,unsigned char*,size_t) ; 
 int FUNC9 (TYPE_1__*,unsigned char*,size_t) ; 

__attribute__((used)) static int FUNC10(git_rawobj *out, git_buf *loc)
{
	unsigned char obj[1024];
	ssize_t obj_len;
	int fd, error;

	FUNC0(out && loc);

	if (FUNC1(loc))
		return -1;

	out->data = NULL;

	if ((error = fd = FUNC3(loc->ptr)) < 0)
		goto done;

	if ((obj_len = FUNC7(fd, obj, sizeof(obj))) < 0) {
		error = (int)obj_len;
		goto done;
	}

	if (!FUNC5(obj, (size_t)obj_len))
		error = FUNC8(out, obj, (size_t)obj_len);
	else
		error = FUNC9(out, obj, (size_t)obj_len);

	if (!error && !FUNC4(out->type)) {
		FUNC2(GIT_ERROR_ZLIB, "failed to read loose object header");
		error = -1;
		goto done;
	}

done:
	if (fd >= 0)
		FUNC6(fd);
	return error;
}