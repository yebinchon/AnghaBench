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
struct vas_window {int /*<<< orphan*/  pid; scalar_t__ tx_win; int /*<<< orphan*/  cop; int /*<<< orphan*/  hvwc_map; } ;
struct seq_file {struct vas_window* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  vas_mutex ; 

__attribute__((used)) static int FUNC4(struct seq_file *s, void *private)
{
	struct vas_window *window = s->private;

	FUNC1(&vas_mutex);

	/* ensure window is not unmapped */
	if (!window->hvwc_map)
		goto unlock;

	FUNC3(s, "Type: %s, %s\n", FUNC0(window->cop),
					window->tx_win ? "Send" : "Receive");
	FUNC3(s, "Pid : %d\n", window->pid);

unlock:
	FUNC2(&vas_mutex);
	return 0;
}