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
typedef  int /*<<< orphan*/  var ;
typedef  int /*<<< orphan*/  nvram_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 char* FUNC4 (char const*,char*) ; 

__attribute__((used)) static int FUNC5(nvram_handle_t *nvram, const char *pair)
{
	char *val = FUNC4(pair, "=");
	char var[FUNC2(pair)];
	int stat = 1;

	if( val != NULL )
	{
		FUNC0(var, 0, sizeof(var));
		FUNC3(var, pair, (int)(val-pair));
		stat = FUNC1(nvram, var, (char *)(val + 1));
	}

	return stat;
}