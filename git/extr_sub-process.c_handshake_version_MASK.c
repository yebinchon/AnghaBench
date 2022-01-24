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
struct child_process {int /*<<< orphan*/  out; int /*<<< orphan*/  in; } ;

/* Variables and functions */
 int FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,char const**) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 scalar_t__ FUNC6 (char const*,int,int*) ; 

__attribute__((used)) static int FUNC7(struct child_process *process,
			     const char *welcome_prefix, int *versions,
			     int *chosen_version)
{
	int version_scratch;
	int i;
	char *line;
	const char *p;

	if (!chosen_version)
		chosen_version = &version_scratch;

	if (FUNC3(process->in, "%s-client\n",
				    welcome_prefix))
		return FUNC0("Could not write client identification");
	for (i = 0; versions[i]; i++) {
		if (FUNC3(process->in, "version=%d\n",
					    versions[i]))
			return FUNC0("Could not write requested version");
	}
	if (FUNC1(process->in))
		return FUNC0("Could not write flush packet");

	if (!(line = FUNC2(process->out, NULL)) ||
	    !FUNC4(line, welcome_prefix, &p) ||
	    FUNC5(p, "-server"))
		return FUNC0("Unexpected line '%s', expected %s-server",
			     line ? line : "<flush packet>", welcome_prefix);
	if (!(line = FUNC2(process->out, NULL)) ||
	    !FUNC4(line, "version=", &p) ||
	    FUNC6(p, 10, chosen_version))
		return FUNC0("Unexpected line '%s', expected version",
			     line ? line : "<flush packet>");
	if ((line = FUNC2(process->out, NULL)))
		return FUNC0("Unexpected line '%s', expected flush", line);

	/* Check to make sure that the version received is supported */
	for (i = 0; versions[i]; i++) {
		if (versions[i] == *chosen_version)
			break;
	}
	if (!versions[i])
		return FUNC0("Version %d not supported", *chosen_version);

	return 0;
}