#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct foreach_state {int /*<<< orphan*/  dir_len; void* data; scalar_t__ cb; } ;
typedef  int /*<<< orphan*/  state ;
struct TYPE_2__ {char* objects_dir; } ;
typedef  TYPE_1__ loose_backend ;
typedef  scalar_t__ git_odb_foreach_cb ;
typedef  int /*<<< orphan*/  git_odb_backend ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  foreach_cb ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct foreach_state*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct foreach_state*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(git_odb_backend *_backend, git_odb_foreach_cb cb, void *data)
{
	char *objects_dir;
	int error;
	git_buf buf = GIT_BUF_INIT;
	struct foreach_state state;
	loose_backend *backend = (loose_backend *) _backend;

	FUNC0(backend && cb);

	objects_dir = backend->objects_dir;

	FUNC4(&buf, objects_dir);
	FUNC6(&buf);
	if (FUNC3(&buf))
		return -1;

	FUNC7(&state, 0, sizeof(state));
	state.cb = cb;
	state.data = data;
	state.dir_len = FUNC2(&buf);

	error = FUNC5(&buf, 0, foreach_cb, &state);

	FUNC1(&buf);

	return error;
}