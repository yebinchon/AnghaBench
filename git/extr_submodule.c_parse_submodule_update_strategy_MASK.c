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
struct submodule_update_strategy {int type; int /*<<< orphan*/ * command; } ;
typedef  enum submodule_update_type { ____Placeholder_submodule_update_type } submodule_update_type ;

/* Variables and functions */
 int SM_UPDATE_COMMAND ; 
 int SM_UPDATE_UNSPECIFIED ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 

int FUNC3(const char *value,
		struct submodule_update_strategy *dst)
{
	enum submodule_update_type type;

	FUNC0((void*)dst->command);
	dst->command = NULL;

	type = FUNC1(value);
	if (type == SM_UPDATE_UNSPECIFIED)
		return -1;

	dst->type = type;
	if (type == SM_UPDATE_COMMAND)
		dst->command = FUNC2(value + 1);

	return 0;
}