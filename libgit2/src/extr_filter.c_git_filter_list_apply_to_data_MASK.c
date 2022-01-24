#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct buf_stream {int /*<<< orphan*/  complete; int /*<<< orphan*/  parent; } ;
typedef  int /*<<< orphan*/  git_filter_list ;
struct TYPE_8__ {int /*<<< orphan*/  size; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct buf_stream*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 

int FUNC5(
	git_buf *tgt, git_filter_list *filters, git_buf *src)
{
	struct buf_stream writer;
	int error;

	FUNC3(tgt);
	FUNC3(src);

	if (!filters) {
		FUNC2(tgt, src->ptr, src->size);
		return 0;
	}

	FUNC1(&writer, tgt);

	if ((error = FUNC4(filters, src,
		&writer.parent)) < 0)
			return error;

	FUNC0(writer.complete);
	return error;
}