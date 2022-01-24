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
struct ref {int /*<<< orphan*/  new_oid; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 struct ref* FUNC0 () ; 
 struct ref* FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct object_id*) ; 

__attribute__((used)) static int FUNC4(const char *name,
				    struct ref **match)
{
	struct object_id oid;

	if (!*name) {
		if (match)
			*match = FUNC0();
		return 0;
	}

	if (FUNC2(name, &oid))
		return -1;

	if (match) {
		*match = FUNC1(name);
		FUNC3(&(*match)->new_oid, &oid);
	}
	return 0;
}