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
struct ref_sorting {int /*<<< orphan*/  atom; int /*<<< orphan*/ * next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 struct ref_sorting* FUNC1 (int,int) ; 

struct ref_sorting *FUNC2(void)
{
	static const char cstr_name[] = "refname";

	struct ref_sorting *sorting = FUNC1(1, sizeof(*sorting));

	sorting->next = NULL;
	sorting->atom = FUNC0(cstr_name);
	return sorting;
}