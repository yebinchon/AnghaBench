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
struct ead_instance {scalar_t__ pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 struct ead_instance* instance ; 
 int /*<<< orphan*/  instance_handle_sigchld ; 
 int /*<<< orphan*/  nonfork ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ pcap_fp ; 
 scalar_t__ pcap_fp_rx ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct ead_instance *i)
{
	if (!nonfork) {
		i->pid = FUNC3();
		if (i->pid != 0) {
			if (i->pid < 0)
				i->pid = 0;
			return;
		}
	}

	instance = i;
	FUNC5(SIGCHLD, instance_handle_sigchld);
	FUNC0(true);
	FUNC1();
	FUNC4(pcap_fp);
	if (pcap_fp_rx != pcap_fp)
		FUNC4(pcap_fp_rx);

	FUNC2(0);
}