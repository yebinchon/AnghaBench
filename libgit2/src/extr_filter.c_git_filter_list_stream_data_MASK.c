#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int (* write ) (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int (* close ) (TYPE_1__*) ;} ;
typedef  TYPE_1__ git_writestream ;
typedef  int /*<<< orphan*/  git_vector ;
typedef  int /*<<< orphan*/  git_filter_list ;
struct TYPE_11__ {int /*<<< orphan*/  size; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_2__ git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_VECTOR_INIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*) ; 

int FUNC5(
	git_filter_list *filters,
	git_buf *data,
	git_writestream *target)
{
	git_vector filter_streams = GIT_VECTOR_INIT;
	git_writestream *stream_start;
	int error, initialized = 0;

	FUNC0(data);

	if ((error = FUNC2(&stream_start, &filter_streams, filters, target)) < 0)
		goto out;
	initialized = 1;

	if ((error = stream_start->write(
			stream_start, data->ptr, data->size)) < 0)
		goto out;

out:
	if (initialized)
		error |= stream_start->close(stream_start);

	FUNC1(&filter_streams);
	return error;
}