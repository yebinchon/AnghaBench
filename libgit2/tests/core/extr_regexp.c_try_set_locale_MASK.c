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
 int MB_CUR_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * old_locales ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 

__attribute__((used)) static void FUNC3(int category)
{
#if LC_ALL > 0
	old_locales[category] = setlocale(category, NULL);
#endif

	if (!FUNC2(category, "UTF-8") &&
	    !FUNC2(category, "c.utf8") &&
	    !FUNC2(category, "en_US.UTF-8"))
		FUNC1();

	if (MB_CUR_MAX == 1)
		FUNC0("Expected locale to be switched to multibyte");
}