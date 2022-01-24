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
struct pcmcia_device {int /*<<< orphan*/  config_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONF_AUTO_SET_IO ; 
 int ENODEV ; 
 int /*<<< orphan*/  cm4000_config_check ; 
 int /*<<< orphan*/  FUNC0 (struct pcmcia_device*) ; 
 scalar_t__ FUNC1 (struct pcmcia_device*) ; 
 scalar_t__ FUNC2 (struct pcmcia_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct pcmcia_device * link, int devno)
{
	link->config_flags |= CONF_AUTO_SET_IO;

	/* read the config-tuples */
	if (FUNC2(link, cm4000_config_check, NULL))
		goto cs_release;

	if (FUNC1(link))
		goto cs_release;

	return 0;

cs_release:
	FUNC0(link);
	return -ENODEV;
}