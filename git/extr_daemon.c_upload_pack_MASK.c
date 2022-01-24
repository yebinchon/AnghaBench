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
struct child_process {int /*<<< orphan*/  env_array; int /*<<< orphan*/  args; } ;
struct argv_array {int /*<<< orphan*/  argv; } ;

/* Variables and functions */
 struct child_process CHILD_PROCESS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct child_process*) ; 
 int /*<<< orphan*/  timeout ; 

__attribute__((used)) static int FUNC4(const struct argv_array *env)
{
	struct child_process cld = CHILD_PROCESS_INIT;
	FUNC1(&cld.args, "upload-pack", "--strict", NULL);
	FUNC0(&cld.args, "--timeout=%u", timeout);

	FUNC2(&cld.env_array, env->argv);

	return FUNC3(&cld);
}