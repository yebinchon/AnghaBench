#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
struct pcmcia_device {TYPE_1__* priv; } ;
struct TYPE_8__ {int close_delay; int closing_wait; int /*<<< orphan*/ * ops; } ;
struct TYPE_7__ {int max_frame_size; int imra_value; int imrb_value; int pim_value; TYPE_2__ port; struct pcmcia_device* p_dev; int /*<<< orphan*/  idle_mode; int /*<<< orphan*/  params; int /*<<< orphan*/  netlock; int /*<<< orphan*/  lock; int /*<<< orphan*/  event_wait_q; int /*<<< orphan*/  status_event_wait_q; int /*<<< orphan*/  task; int /*<<< orphan*/  magic; } ;
typedef  int /*<<< orphan*/  MGSL_PARAMS ;
typedef  TYPE_1__ MGSLPC_INFO ;

/* Variables and functions */
 scalar_t__ DEBUG_LEVEL_INFO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HDLC_TXIDLE_FLAGS ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MGSLPC_MAGIC ; 
 int /*<<< orphan*/  bh_handler ; 
 scalar_t__ debug_level ; 
 int /*<<< orphan*/  default_params ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (TYPE_1__*) ; 
 int FUNC6 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  mgslpc_port_ops ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC12(struct pcmcia_device *link)
{
	MGSLPC_INFO *info;
	int ret;

	if (debug_level >= DEBUG_LEVEL_INFO)
		FUNC8("mgslpc_attach\n");

	info = FUNC3(sizeof(MGSLPC_INFO), GFP_KERNEL);
	if (!info) {
		FUNC8("Error can't allocate device instance data\n");
		return -ENOMEM;
	}

	info->magic = MGSLPC_MAGIC;
	FUNC11(&info->port);
	info->port.ops = &mgslpc_port_ops;
	FUNC0(&info->task, bh_handler);
	info->max_frame_size = 4096;
	info->port.close_delay = 5*HZ/10;
	info->port.closing_wait = 30*HZ;
	FUNC1(&info->status_event_wait_q);
	FUNC1(&info->event_wait_q);
	FUNC9(&info->lock);
	FUNC9(&info->netlock);
	FUNC4(&info->params,&default_params,sizeof(MGSL_PARAMS));
	info->idle_mode = HDLC_TXIDLE_FLAGS;
	info->imra_value = 0xffff;
	info->imrb_value = 0xffff;
	info->pim_value = 0xff;

	info->p_dev = link;
	link->priv = info;

	/* Initialize the struct pcmcia_device structure */

	ret = FUNC6(link);
	if (ret != 0)
		goto failed;

	ret = FUNC5(info);
	if (ret != 0)
		goto failed_release;

	return 0;

failed_release:
	FUNC7((u_long)link);
failed:
	FUNC10(&info->port);
	FUNC2(info);
	return ret;
}