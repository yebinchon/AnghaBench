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
struct diff_options {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct diff_options*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  diff_queued_diff ; 
 int /*<<< orphan*/  FUNC2 (struct diff_options*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 

__attribute__((used)) static void FUNC4(const char *a, const char *b,
		       struct diff_options *diffopt)
{
	FUNC1(&diff_queued_diff,
		   FUNC3("a", a), FUNC3("b", b));

	FUNC2(diffopt);
	FUNC0(diffopt);
}