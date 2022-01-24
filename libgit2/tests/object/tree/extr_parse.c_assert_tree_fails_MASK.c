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
typedef  int /*<<< orphan*/  git_object ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_OBJECT_TREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,char const*,size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (char const*) ; 

__attribute__((used)) static void FUNC3(const char *data, size_t datalen)
{
	git_object *object;
	if (!datalen)
		datalen = FUNC2(data);
	FUNC0(FUNC1(&object, data, datalen, GIT_OBJECT_TREE));
}