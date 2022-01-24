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
struct cmd_struct {int dummy; } ;
struct argv_array {char** argv; } ;

/* Variables and functions */
 struct argv_array ARGV_ARRAY_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct argv_array*) ; 
 int /*<<< orphan*/  FUNC1 (struct argv_array*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct cmd_struct* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct cmd_struct*,int,char const**) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char const**) ; 

__attribute__((used)) static void FUNC7(int argc, const char **argv)
{
	struct argv_array args = ARGV_ARRAY_INIT;
	const char *cmd;
	struct cmd_struct *builtin;

	FUNC6(argv);
	cmd = argv[0];

	/* Turn "git cmd --help" into "git help --exclude-guides cmd" */
	if (argc > 1 && !FUNC5(argv[1], "--help")) {
		int i;

		argv[1] = argv[0];
		argv[0] = cmd = "help";

		for (i = 0; i < argc; i++) {
			FUNC1(&args, argv[i]);
			if (!i)
				FUNC1(&args, "--exclude-guides");
		}

		argc++;
		argv = args.argv;
	}

	builtin = FUNC3(cmd);
	if (builtin)
		FUNC2(FUNC4(builtin, argc, argv));
	FUNC0(&args);
}