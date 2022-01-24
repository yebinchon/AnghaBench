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
struct kernel_ipmi_msg {int dummy; } ;
struct ipmi_user {int /*<<< orphan*/  refcount; } ;
struct ipmi_smi_msg {int /*<<< orphan*/  data_size; int /*<<< orphan*/  data; } ;
struct ipmi_smi {int /*<<< orphan*/  handlers; scalar_t__ in_shutdown; } ;
struct ipmi_recv_msg {long msgid; struct kernel_ipmi_msg msg; struct ipmi_user* user; void* user_msg_data; } ;
struct ipmi_addr {scalar_t__ addr_type; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 scalar_t__ IPMI_SYSTEM_INTERFACE_ADDR_TYPE ; 
 int FUNC0 (struct ipmi_smi*,struct ipmi_addr*,long,struct kernel_ipmi_msg*,struct ipmi_smi_msg*,struct ipmi_recv_msg*,unsigned char,unsigned char,int,unsigned int) ; 
 int FUNC1 (struct ipmi_smi*,struct ipmi_addr*,long,struct kernel_ipmi_msg*,struct ipmi_smi_msg*,struct ipmi_recv_msg*,unsigned char,int,unsigned int) ; 
 int FUNC2 (struct ipmi_smi*,struct ipmi_addr*,long,struct kernel_ipmi_msg*,struct ipmi_smi_msg*,struct ipmi_recv_msg*,int,unsigned int) ; 
 struct ipmi_recv_msg* FUNC3 () ; 
 struct ipmi_smi_msg* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ipmi_recv_msg*) ; 
 int /*<<< orphan*/  FUNC7 (struct ipmi_smi_msg*) ; 
 int /*<<< orphan*/  FUNC8 (struct ipmi_smi*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct ipmi_addr*) ; 
 scalar_t__ FUNC10 (struct ipmi_addr*) ; 
 scalar_t__ FUNC11 (struct ipmi_addr*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  sent_invalid_commands ; 
 int /*<<< orphan*/  FUNC15 (struct ipmi_smi*,int /*<<< orphan*/ ,struct ipmi_smi_msg*,int) ; 

__attribute__((used)) static int FUNC16(struct ipmi_user     *user,
			  struct ipmi_smi      *intf,
			  struct ipmi_addr     *addr,
			  long                 msgid,
			  struct kernel_ipmi_msg *msg,
			  void                 *user_msg_data,
			  void                 *supplied_smi,
			  struct ipmi_recv_msg *supplied_recv,
			  int                  priority,
			  unsigned char        source_address,
			  unsigned char        source_lun,
			  int                  retries,
			  unsigned int         retry_time_ms)
{
	struct ipmi_smi_msg *smi_msg;
	struct ipmi_recv_msg *recv_msg;
	int rv = 0;

	if (supplied_recv)
		recv_msg = supplied_recv;
	else {
		recv_msg = FUNC3();
		if (recv_msg == NULL) {
			rv = -ENOMEM;
			goto out;
		}
	}
	recv_msg->user_msg_data = user_msg_data;

	if (supplied_smi)
		smi_msg = (struct ipmi_smi_msg *) supplied_smi;
	else {
		smi_msg = FUNC4();
		if (smi_msg == NULL) {
			if (!supplied_recv)
				FUNC6(recv_msg);
			rv = -ENOMEM;
			goto out;
		}
	}

	FUNC13();
	if (intf->in_shutdown) {
		rv = -ENODEV;
		goto out_err;
	}

	recv_msg->user = user;
	if (user)
		/* The put happens when the message is freed. */
		FUNC12(&user->refcount);
	recv_msg->msgid = msgid;
	/*
	 * Store the message to send in the receive message so timeout
	 * responses can get the proper response data.
	 */
	recv_msg->msg = *msg;

	if (addr->addr_type == IPMI_SYSTEM_INTERFACE_ADDR_TYPE) {
		rv = FUNC2(intf, addr, msgid, msg, smi_msg,
					recv_msg, retries, retry_time_ms);
	} else if (FUNC9(addr) || FUNC10(addr)) {
		rv = FUNC0(intf, addr, msgid, msg, smi_msg, recv_msg,
				     source_address, source_lun,
				     retries, retry_time_ms);
	} else if (FUNC11(addr)) {
		rv = FUNC1(intf, addr, msgid, msg, smi_msg, recv_msg,
				    source_lun, retries, retry_time_ms);
	} else {
	    /* Unknown address type. */
		FUNC8(intf, sent_invalid_commands);
		rv = -EINVAL;
	}

	if (rv) {
out_err:
		FUNC7(smi_msg);
		FUNC6(recv_msg);
	} else {
		FUNC5("Send", smi_msg->data, smi_msg->data_size);

		FUNC15(intf, intf->handlers, smi_msg, priority);
	}
	FUNC14();

out:
	return rv;
}