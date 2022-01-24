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
struct object_id {int dummy; } ;
struct argv_array {int /*<<< orphan*/  argv; } ;

/* Variables and functions */
 struct argv_array ARGV_ARRAY_INIT ; 
 int /*<<< orphan*/  RUN_GIT_CMD ; 
 int /*<<< orphan*/  FUNC0 (struct argv_array*) ; 
 int /*<<< orphan*/  FUNC1 (struct argv_array*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct argv_array*,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct object_id const*) ; 
 int /*<<< orphan*/  FUNC4 (struct object_id const*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(const struct object_id *oid)
{
	int ret;
	struct argv_array argv = ARGV_ARRAY_INIT;

	FUNC2(&argv, "reset", "--merge", NULL);

	if (!FUNC3(oid))
		FUNC1(&argv, FUNC4(oid));

	ret = FUNC5(argv.argv, RUN_GIT_CMD);
	FUNC0(&argv);

	return ret;
}