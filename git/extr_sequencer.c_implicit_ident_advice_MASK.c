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
 char const* FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  implicit_ident_advice_config ; 
 int /*<<< orphan*/  implicit_ident_advice_noconfig ; 
 char* FUNC4 (char*) ; 

__attribute__((used)) static const char *FUNC5(void)
{
	char *user_config = FUNC1("~/.gitconfig", 0);
	char *xdg_config = FUNC4("config");
	int config_exists = FUNC2(user_config) || FUNC2(xdg_config);

	FUNC3(user_config);
	FUNC3(xdg_config);

	if (config_exists)
		return FUNC0(implicit_ident_advice_config);
	else
		return FUNC0(implicit_ident_advice_noconfig);

}