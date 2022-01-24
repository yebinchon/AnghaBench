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
struct pcmcia_device {struct bt3c_info* priv; } ;
struct bt3c_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENODEV ; 
 int /*<<< orphan*/  bt3c_check_config ; 
 int /*<<< orphan*/  bt3c_check_config_notpicky ; 
 int /*<<< orphan*/  bt3c_interrupt ; 
 scalar_t__ FUNC1 (struct bt3c_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct pcmcia_device*) ; 
 int FUNC3 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct pcmcia_device*,int /*<<< orphan*/ ,void*) ; 
 int FUNC5 (struct pcmcia_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct pcmcia_device *link)
{
	struct bt3c_info *info = link->priv;
	int i;
	unsigned long try;

	/* First pass: look for a config entry that looks normal.
	 * Two tries: without IO aliases, then with aliases
	 */
	for (try = 0; try < 2; try++)
		if (!FUNC4(link, bt3c_check_config, (void *) try))
			goto found_port;

	/* Second pass: try to find an entry that isn't picky about
	 * its base address, then try to grab any standard serial port
	 * address, and finally try to get any free port.
	 */
	if (!FUNC4(link, bt3c_check_config_notpicky, NULL))
		goto found_port;

	FUNC0("No usable port range found");
	goto failed;

found_port:
	i = FUNC5(link, &bt3c_interrupt);
	if (i != 0)
		goto failed;

	i = FUNC3(link);
	if (i != 0)
		goto failed;

	if (FUNC1(info) != 0)
		goto failed;

	return 0;

failed:
	FUNC2(link);
	return -ENODEV;
}