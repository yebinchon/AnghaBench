#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_diff_driver ;
struct TYPE_3__ {char* ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char) ; 

__attribute__((used)) static int FUNC2(
	git_diff_driver *driver, git_buf *line)
{
	char firstch = line->ptr[0];
	FUNC0(driver);
	return (FUNC1(firstch) || firstch == '_' || firstch == '$');
}