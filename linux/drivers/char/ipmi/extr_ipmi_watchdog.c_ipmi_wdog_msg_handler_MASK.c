#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ cmd; scalar_t__* data; } ;
struct ipmi_recv_msg {TYPE_1__ msg; } ;

/* Variables and functions */
 scalar_t__ IPMI_WDOG_RESET_TIMER ; 
 scalar_t__ IPMI_WDOG_TIMER_NOT_INIT_RESP ; 
 int /*<<< orphan*/  FUNC0 (struct ipmi_recv_msg*) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(struct ipmi_recv_msg *msg,
				  void                 *handler_data)
{
	if (msg->msg.cmd == IPMI_WDOG_RESET_TIMER &&
			msg->msg.data[0] == IPMI_WDOG_TIMER_NOT_INIT_RESP)
		FUNC2("response: The IPMI controller appears to have been reset, will attempt to reinitialize the watchdog timer\n");
	else if (msg->msg.data[0] != 0)
		FUNC1("response: Error %x on cmd %x\n",
		       msg->msg.data[0],
		       msg->msg.cmd);

	FUNC0(msg);
}