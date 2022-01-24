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
struct opts {int cmd; int argc; char** argv; } ;
typedef  enum subcmd { ____Placeholder_subcmd } subcmd ;

/* Variables and functions */
 int SUBCMD_APPLY ; 
 int SUBCMD_LIST ; 
 int SUBCMD_POP ; 
 int SUBCMD_PUSH ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

__attribute__((used)) static void FUNC2(struct opts *opts, int argc, char *argv[])
{
	char *arg = (argc < 2) ? "push" : argv[1];
	enum subcmd cmd;

	if (!FUNC0(arg, "apply")) {
		cmd = SUBCMD_APPLY;
	} else if (!FUNC0(arg, "list")) {
		cmd = SUBCMD_LIST;
	} else if (!FUNC0(arg, "pop")) {
		cmd = SUBCMD_POP;
	} else if (!FUNC0(arg, "push")) {
		cmd = SUBCMD_PUSH;
	} else {
		FUNC1("invalid command %s", arg);
		return;
	}

	opts->cmd = cmd;
	opts->argc = (argc < 2) ? argc - 1 : argc - 2;
	opts->argv = argv;
}