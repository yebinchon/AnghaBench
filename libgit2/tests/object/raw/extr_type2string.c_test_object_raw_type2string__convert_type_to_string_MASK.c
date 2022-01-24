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
 int GIT_OBJECT_BLOB ; 
 int GIT_OBJECT_COMMIT ; 
 int GIT_OBJECT_INVALID ; 
 int GIT_OBJECT_OFS_DELTA ; 
 int GIT_OBJECT_REF_DELTA ; 
 int GIT_OBJECT_TAG ; 
 int GIT_OBJECT_TREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

void FUNC2(void)
{
	FUNC0(FUNC1(GIT_OBJECT_INVALID), "");
	FUNC0(FUNC1(0), ""); /* EXT1 */
	FUNC0(FUNC1(GIT_OBJECT_COMMIT), "commit");
	FUNC0(FUNC1(GIT_OBJECT_TREE), "tree");
	FUNC0(FUNC1(GIT_OBJECT_BLOB), "blob");
	FUNC0(FUNC1(GIT_OBJECT_TAG), "tag");
	FUNC0(FUNC1(5), ""); /* EXT2 */
	FUNC0(FUNC1(GIT_OBJECT_OFS_DELTA), "OFS_DELTA");
	FUNC0(FUNC1(GIT_OBJECT_REF_DELTA), "REF_DELTA");

	FUNC0(FUNC1(-2), "");
	FUNC0(FUNC1(8), "");
	FUNC0(FUNC1(1234), "");
}