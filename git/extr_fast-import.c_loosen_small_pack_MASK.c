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
struct packed_git {int /*<<< orphan*/  pack_fd; int /*<<< orphan*/  pack_name; } ;
struct child_process {int git_cmd; int stdout_to_stderr; int /*<<< orphan*/  args; int /*<<< orphan*/  in; } ;

/* Variables and functions */
 struct child_process CHILD_PROCESS_INIT ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct child_process*) ; 
 int /*<<< orphan*/  show_stats ; 

__attribute__((used)) static int FUNC4(const struct packed_git *p)
{
	struct child_process unpack = CHILD_PROCESS_INIT;

	if (FUNC2(p->pack_fd, 0, SEEK_SET) < 0)
		FUNC1("Failed seeking to start of '%s'", p->pack_name);

	unpack.in = p->pack_fd;
	unpack.git_cmd = 1;
	unpack.stdout_to_stderr = 1;
	FUNC0(&unpack.args, "unpack-objects");
	if (!show_stats)
		FUNC0(&unpack.args, "-q");

	return FUNC3(&unpack);
}