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
struct mailinfo {int /*<<< orphan*/  use_scissors; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char const*) ; 
 int FUNC1 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 

__attribute__((used)) static int FUNC4(const char *var, const char *value, void *mi_)
{
	struct mailinfo *mi = mi_;

	if (!FUNC2(var, "mailinfo."))
		return FUNC1(var, value, NULL);
	if (!FUNC3(var, "mailinfo.scissors")) {
		mi->use_scissors = FUNC0(var, value);
		return 0;
	}
	/* perhaps others here */
	return 0;
}