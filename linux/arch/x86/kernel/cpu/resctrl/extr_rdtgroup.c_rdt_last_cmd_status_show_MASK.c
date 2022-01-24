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
struct seq_file {int dummy; } ;
struct kernfs_open_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  last_cmd_status ; 
 int /*<<< orphan*/  last_cmd_status_buf ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rdtgroup_mutex ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*) ; 

__attribute__((used)) static int FUNC5(struct kernfs_open_file *of,
				    struct seq_file *seq, void *v)
{
	int len;

	FUNC0(&rdtgroup_mutex);
	len = FUNC2(&last_cmd_status);
	if (len)
		FUNC3(seq, "%.*s", len, last_cmd_status_buf);
	else
		FUNC4(seq, "ok\n");
	FUNC1(&rdtgroup_mutex);
	return 0;
}