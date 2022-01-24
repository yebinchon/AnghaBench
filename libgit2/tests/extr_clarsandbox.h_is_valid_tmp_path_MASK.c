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
struct TYPE_3__ {int /*<<< orphan*/  st_mode; } ;
typedef  TYPE_1__ STAT_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  W_OK ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC3(const char *path)
{
	STAT_T st;

	if (FUNC2(path, &st) != 0)
		return 0;

	if (!FUNC0(st.st_mode))
		return 0;

	return (FUNC1(path, W_OK) == 0);
}