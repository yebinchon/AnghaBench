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
struct oid_array {int dummy; } ;
struct object_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 scalar_t__ FUNC1 (char const*,struct object_id*) ; 
 int /*<<< orphan*/  FUNC2 (struct oid_array*,struct object_id*) ; 
 scalar_t__ FUNC3 (char const*,char*,char const**) ; 

__attribute__((used)) static int FUNC4(const char *line, struct oid_array *haves)
{
	const char *arg;
	if (FUNC3(line, "have ", &arg)) {
		struct object_id oid;

		if (FUNC1(arg, &oid))
			FUNC0("git upload-pack: expected SHA1 object, got '%s'", arg);
		FUNC2(haves, &oid);
		return 1;
	}

	return 0;
}