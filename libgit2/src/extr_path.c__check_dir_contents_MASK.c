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
struct TYPE_7__ {char const* ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 scalar_t__ FUNC0 (size_t*,size_t,int) ; 
 scalar_t__ FUNC1 (TYPE_1__*,char const*,char const*) ; 
 size_t FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,size_t) ; 
 scalar_t__ FUNC4 (TYPE_1__*,size_t,int) ; 
 size_t FUNC5 (char const*) ; 

__attribute__((used)) static bool FUNC6(
	git_buf *dir,
	const char *sub,
	bool (*predicate)(const char *))
{
	bool result;
	size_t dir_size = FUNC2(dir);
	size_t sub_size = FUNC5(sub);
	size_t alloc_size;

	/* leave base valid even if we could not make space for subdir */
	if (FUNC0(&alloc_size, dir_size, sub_size) ||
		FUNC0(&alloc_size, alloc_size, 2) ||
		FUNC4(dir, alloc_size, false) < 0)
		return false;

	/* save excursion */
	if (FUNC1(dir, dir->ptr, sub) < 0)
		return false;

	result = predicate(dir->ptr);

	/* restore path */
	FUNC3(dir, dir_size);
	return result;
}