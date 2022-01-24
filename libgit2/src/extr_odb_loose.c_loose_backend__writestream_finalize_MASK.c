#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  fbuf; } ;
typedef  TYPE_1__ loose_writestream ;
typedef  int /*<<< orphan*/  loose_backend ;
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_10__ {scalar_t__ backend; } ;
typedef  TYPE_2__ git_odb_stream ;
struct TYPE_11__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_3__ git_buf ;

/* Variables and functions */
 TYPE_3__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (TYPE_3__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(git_odb_stream *_stream, const git_oid *oid)
{
	loose_writestream *stream = (loose_writestream *)_stream;
	loose_backend *backend = (loose_backend *)_stream->backend;
	git_buf final_path = GIT_BUF_INIT;
	int error = 0;

	if (FUNC2(&final_path, backend, oid) < 0 ||
		FUNC3(&final_path, backend) < 0)
		error = -1;
	else
		error = FUNC1(
			&stream->fbuf, final_path.ptr);

	FUNC0(&final_path);

	return error;
}