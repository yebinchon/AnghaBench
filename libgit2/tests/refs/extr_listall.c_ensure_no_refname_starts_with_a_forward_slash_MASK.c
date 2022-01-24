#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t count; int /*<<< orphan*/ * strings; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 TYPE_1__ ref_list ; 
 int /*<<< orphan*/  repo ; 

__attribute__((used)) static void FUNC7(const char *path)
{
	size_t i;

	FUNC1(FUNC5(&repo, path));
	FUNC1(FUNC3(&ref_list, repo));

	FUNC0(ref_list.count > 0);

	for (i = 0; i < ref_list.count; i++)
		FUNC0(FUNC2(ref_list.strings[i], "/") != 0);

	FUNC6(&ref_list);
	FUNC4(repo);
}