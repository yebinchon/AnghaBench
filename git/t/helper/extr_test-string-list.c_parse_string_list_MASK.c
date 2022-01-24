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
struct string_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct string_list*,char const*,char,int) ; 

__attribute__((used)) static void FUNC2(struct string_list *list, const char *arg)
{
	if (!FUNC0(arg, "-"))
		return;

	(void)FUNC1(list, arg, ':', -1);
}