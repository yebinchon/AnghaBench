#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  name; int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ git_config_entry ;
struct TYPE_5__ {int /*<<< orphan*/  name; int /*<<< orphan*/  path; } ;
typedef  TYPE_2__ fbp_data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ,char) ; 

__attribute__((used)) static int FUNC5(const git_config_entry *entry, void *payload)
{
	fbp_data *data = payload;

	if (!FUNC3(entry->value, data->path)) {
		const char *fdot, *ldot;
		fdot = FUNC2(entry->name, '.');
		ldot = FUNC4(entry->name, '.');
		data->name = FUNC1(fdot + 1, ldot - fdot - 1);
		FUNC0(data->name);
	}

	return 0;
}