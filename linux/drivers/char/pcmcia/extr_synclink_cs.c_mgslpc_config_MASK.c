#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
struct pcmcia_device {int config_flags; int config_index; int /*<<< orphan*/  irq; TYPE_1__** resource; int /*<<< orphan*/  config_regs; TYPE_2__* priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  irq_level; int /*<<< orphan*/  io_base; } ;
struct TYPE_3__ {int /*<<< orphan*/  start; } ;
typedef  TYPE_2__ MGSLPC_INFO ;

/* Variables and functions */
 int CONF_AUTO_SET_IO ; 
 int CONF_ENABLE_IRQ ; 
 scalar_t__ DEBUG_LEVEL_INFO ; 
 int ENODEV ; 
 int /*<<< orphan*/  PRESENT_OPTION ; 
 scalar_t__ debug_level ; 
 int /*<<< orphan*/  mgslpc_ioprobe ; 
 int /*<<< orphan*/  mgslpc_isr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct pcmcia_device*) ; 
 int FUNC2 (struct pcmcia_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct pcmcia_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct pcmcia_device*) ; 

__attribute__((used)) static int FUNC5(struct pcmcia_device *link)
{
	MGSLPC_INFO *info = link->priv;
	int ret;

	if (debug_level >= DEBUG_LEVEL_INFO)
		FUNC4("mgslpc_config(0x%p)\n", link);

	link->config_flags |= CONF_ENABLE_IRQ | CONF_AUTO_SET_IO;

	ret = FUNC2(link, mgslpc_ioprobe, NULL);
	if (ret != 0)
		goto failed;

	link->config_index = 8;
	link->config_regs = PRESENT_OPTION;

	ret = FUNC3(link, mgslpc_isr);
	if (ret)
		goto failed;
	ret = FUNC1(link);
	if (ret)
		goto failed;

	info->io_base = link->resource[0]->start;
	info->irq_level = link->irq;
	return 0;

failed:
	FUNC0((u_long)link);
	return -ENODEV;
}