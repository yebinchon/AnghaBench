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
struct kernel_ipmi_msg {int dummy; } ;
struct ipmi_smi_msg {int /*<<< orphan*/  done; } ;
struct ipmi_smi {int /*<<< orphan*/  send_info; TYPE_2__* handlers; TYPE_1__* addrinfo; } ;
struct ipmi_recv_msg {int /*<<< orphan*/  done; } ;
struct ipmi_addr {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* flush_messages ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  lun; int /*<<< orphan*/  address; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dummy_recv_done_handler ; 
 int /*<<< orphan*/  dummy_smi_done_handler ; 
 int FUNC3 (int /*<<< orphan*/ *,struct ipmi_smi*,struct ipmi_addr*,int /*<<< orphan*/ ,struct kernel_ipmi_msg*,struct ipmi_smi*,struct ipmi_smi_msg*,struct ipmi_recv_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ipmi_smi*) ; 
 int /*<<< orphan*/  panic_done_count ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct ipmi_smi *intf,
					struct ipmi_addr *addr,
					struct kernel_ipmi_msg *msg)
{
	struct ipmi_smi_msg  smi_msg;
	struct ipmi_recv_msg recv_msg;
	int rv;

	smi_msg.done = dummy_smi_done_handler;
	recv_msg.done = dummy_recv_done_handler;
	FUNC0(2, &panic_done_count);
	rv = FUNC3(NULL,
			    intf,
			    addr,
			    0,
			    msg,
			    intf,
			    &smi_msg,
			    &recv_msg,
			    0,
			    intf->addrinfo[0].address,
			    intf->addrinfo[0].lun,
			    0, 1); /* Don't retry, and don't wait. */
	if (rv)
		FUNC2(2, &panic_done_count);
	else if (intf->handlers->flush_messages)
		intf->handlers->flush_messages(intf->send_info);

	while (FUNC1(&panic_done_count) != 0)
		FUNC4(intf);
}