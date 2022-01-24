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

/* Variables and functions */
 int /*<<< orphan*/  GIT_OBJECT_ANY ; 
 int /*<<< orphan*/  GIT_OBJECT_BLOB ; 
 int /*<<< orphan*/  GIT_OBJECT_COMMIT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void FUNC1(void)
{
	FUNC0("refs/heads/master", GIT_OBJECT_ANY,
		"a65fedf39aefe402d3bb6e24df4d4f5fe4547750", GIT_OBJECT_COMMIT);
	FUNC0("refs/tags/point_to_blob", GIT_OBJECT_ANY,
		"1385f264afb75a56a5bec74243be9b367ba4ca08", GIT_OBJECT_BLOB);
	FUNC0("refs/tags/test", GIT_OBJECT_ANY,
		"e90810b8df3e80c413d903f631643c716887138d", GIT_OBJECT_COMMIT);
}