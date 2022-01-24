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
struct ipmi_smi {unsigned int curr_working_cset; int channels_ready; TYPE_2__* wchannels; TYPE_2__* channel_list; int /*<<< orphan*/ * null_user_handler; int /*<<< orphan*/  waitq; int /*<<< orphan*/  si_dev; scalar_t__ curr_channel; } ;
struct ipmi_device_id {int dummy; } ;
struct ipmi_channel_set {int dummy; } ;
struct TYPE_4__ {TYPE_1__* c; } ;
struct TYPE_3__ {int /*<<< orphan*/  protocol; int /*<<< orphan*/  medium; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  IPMI_CHANNEL_MEDIUM_IPMB ; 
 int /*<<< orphan*/  IPMI_CHANNEL_PROTOCOL_IPMB ; 
 int /*<<< orphan*/ * channel_handler ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct ipmi_device_id*) ; 
 int FUNC2 (struct ipmi_device_id*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct ipmi_smi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct ipmi_smi *intf, struct ipmi_device_id *id)
{
	int rv;

	if (FUNC1(id) > 1
			|| (FUNC1(id) == 1
			    && FUNC2(id) >= 5)) {
		unsigned int set;

		/*
		 * Start scanning the channels to see what is
		 * available.
		 */
		set = !intf->curr_working_cset;
		intf->curr_working_cset = set;
		FUNC3(&intf->wchannels[set], 0,
		       sizeof(struct ipmi_channel_set));

		intf->null_user_handler = channel_handler;
		intf->curr_channel = 0;
		rv = FUNC4(intf, 0);
		if (rv) {
			FUNC0(intf->si_dev,
				 "Error sending channel information for channel 0, %d\n",
				 rv);
			return -EIO;
		}

		/* Wait for the channel info to be read. */
		FUNC5(intf->waitq, intf->channels_ready);
		intf->null_user_handler = NULL;
	} else {
		unsigned int set = intf->curr_working_cset;

		/* Assume a single IPMB channel at zero. */
		intf->wchannels[set].c[0].medium = IPMI_CHANNEL_MEDIUM_IPMB;
		intf->wchannels[set].c[0].protocol = IPMI_CHANNEL_PROTOCOL_IPMB;
		intf->channel_list = intf->wchannels + set;
		intf->channels_ready = true;
	}

	return 0;
}