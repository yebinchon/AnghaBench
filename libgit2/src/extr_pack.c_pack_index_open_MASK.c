#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct git_pack_file {int index_version; char* pack_name; int /*<<< orphan*/  lock; } ;
struct TYPE_7__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,size_t) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct git_pack_file*) ; 
 size_t FUNC9 (char*) ; 

__attribute__((used)) static int FUNC10(struct git_pack_file *p)
{
	int error = 0;
	size_t name_len;
	git_buf idx_name;

	if (p->index_version > -1)
		return 0;

	name_len = FUNC9(p->pack_name);
	FUNC0(name_len > FUNC9(".pack")); /* checked by git_pack_file alloc */

	if (FUNC2(&idx_name, name_len) < 0)
		return -1;

	FUNC4(&idx_name, p->pack_name, name_len - FUNC9(".pack"));
	FUNC5(&idx_name, ".idx");
	if (FUNC3(&idx_name)) {
		FUNC1(&idx_name);
		return -1;
	}

	if ((error = FUNC6(&p->lock)) < 0) {
		FUNC1(&idx_name);
		return error;
	}

	if (p->index_version == -1)
		error = FUNC8(idx_name.ptr, p);

	FUNC1(&idx_name);

	FUNC7(&p->lock);

	return error;
}