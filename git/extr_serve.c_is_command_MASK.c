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
struct protocol_capability {int /*<<< orphan*/  command; int /*<<< orphan*/  (* advertise ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,...) ; 
 struct protocol_capability* FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static int FUNC4(const char *key, struct protocol_capability **command)
{
	const char *out;

	if (FUNC2(key, "command=", &out)) {
		struct protocol_capability *cmd = FUNC1(out);

		if (*command)
			FUNC0("command '%s' requested after already requesting command '%s'",
			    out, (*command)->name);
		if (!cmd || !cmd->advertise(the_repository, NULL) || !cmd->command)
			FUNC0("invalid command '%s'", out);

		*command = cmd;
		return 1;
	}

	return 0;
}