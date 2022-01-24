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
struct ipmi_user {int /*<<< orphan*/  refcount; } ;
struct ipmi_smi_msg {int rsp_size; int* rsp; int* data; int data_size; } ;
struct ipmi_smi {int /*<<< orphan*/  handlers; int /*<<< orphan*/  in_shutdown; TYPE_1__* addrinfo; } ;
struct TYPE_4__ {int netfn; int cmd; int data_len; int /*<<< orphan*/  data; } ;
struct ipmi_recv_msg {int msgid; int /*<<< orphan*/  msg_data; TYPE_2__ msg; int /*<<< orphan*/  recv_type; struct ipmi_user* user; int /*<<< orphan*/  addr; } ;
struct ipmi_ipmb_addr {int slave_addr; int lun; int channel; int /*<<< orphan*/  addr_type; } ;
struct cmd_rcvr {struct ipmi_user* user; } ;
struct TYPE_3__ {unsigned char address; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPMI_CMD_RECV_TYPE ; 
 int IPMI_INVALID_CMD_COMPLETION_CODE ; 
 int /*<<< orphan*/  IPMI_IPMB_ADDR_TYPE ; 
 int IPMI_NETFN_APP_REQUEST ; 
 int IPMI_SEND_MSG_CMD ; 
 scalar_t__ FUNC0 (struct ipmi_smi*,struct ipmi_recv_msg*) ; 
 struct cmd_rcvr* FUNC1 (struct ipmi_smi*,unsigned char,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  free_user ; 
 int /*<<< orphan*/  handled_commands ; 
 int /*<<< orphan*/  invalid_commands ; 
 void* FUNC2 (unsigned char*,int) ; 
 struct ipmi_recv_msg* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ipmi_smi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct ipmi_smi*,int /*<<< orphan*/ ,struct ipmi_smi_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  unhandled_commands ; 

__attribute__((used)) static int FUNC12(struct ipmi_smi *intf,
				   struct ipmi_smi_msg *msg)
{
	struct cmd_rcvr          *rcvr;
	int                      rv = 0;
	unsigned char            netfn;
	unsigned char            cmd;
	unsigned char            chan;
	struct ipmi_user         *user = NULL;
	struct ipmi_ipmb_addr    *ipmb_addr;
	struct ipmi_recv_msg     *recv_msg;

	if (msg->rsp_size < 10) {
		/* Message not big enough, just ignore it. */
		FUNC5(intf, invalid_commands);
		return 0;
	}

	if (msg->rsp[2] != 0) {
		/* An error getting the response, just ignore it. */
		return 0;
	}

	netfn = msg->rsp[4] >> 2;
	cmd = msg->rsp[8];
	chan = msg->rsp[3] & 0xf;

	FUNC9();
	rcvr = FUNC1(intf, netfn, cmd, chan);
	if (rcvr) {
		user = rcvr->user;
		FUNC6(&user->refcount);
	} else
		user = NULL;
	FUNC10();

	if (user == NULL) {
		/* We didn't find a user, deliver an error response. */
		FUNC5(intf, unhandled_commands);

		msg->data[0] = (IPMI_NETFN_APP_REQUEST << 2);
		msg->data[1] = IPMI_SEND_MSG_CMD;
		msg->data[2] = msg->rsp[3];
		msg->data[3] = msg->rsp[6];
		msg->data[4] = ((netfn + 1) << 2) | (msg->rsp[7] & 0x3);
		msg->data[5] = FUNC2(&msg->data[3], 2);
		msg->data[6] = intf->addrinfo[msg->rsp[3] & 0xf].address;
		/* rqseq/lun */
		msg->data[7] = (msg->rsp[7] & 0xfc) | (msg->rsp[4] & 0x3);
		msg->data[8] = msg->rsp[8]; /* cmd */
		msg->data[9] = IPMI_INVALID_CMD_COMPLETION_CODE;
		msg->data[10] = FUNC2(&msg->data[6], 4);
		msg->data_size = 11;

		FUNC4("Invalid command:", msg->data, msg->data_size);

		FUNC9();
		if (!intf->in_shutdown) {
			FUNC11(intf, intf->handlers, msg, 0);
			/*
			 * We used the message, so return the value
			 * that causes it to not be freed or
			 * queued.
			 */
			rv = -1;
		}
		FUNC10();
	} else {
		recv_msg = FUNC3();
		if (!recv_msg) {
			/*
			 * We couldn't allocate memory for the
			 * message, so requeue it for handling
			 * later.
			 */
			rv = 1;
			FUNC7(&user->refcount, free_user);
		} else {
			/* Extract the source address from the data. */
			ipmb_addr = (struct ipmi_ipmb_addr *) &recv_msg->addr;
			ipmb_addr->addr_type = IPMI_IPMB_ADDR_TYPE;
			ipmb_addr->slave_addr = msg->rsp[6];
			ipmb_addr->lun = msg->rsp[7] & 3;
			ipmb_addr->channel = msg->rsp[3] & 0xf;

			/*
			 * Extract the rest of the message information
			 * from the IPMB header.
			 */
			recv_msg->user = user;
			recv_msg->recv_type = IPMI_CMD_RECV_TYPE;
			recv_msg->msgid = msg->rsp[7] >> 2;
			recv_msg->msg.netfn = msg->rsp[4] >> 2;
			recv_msg->msg.cmd = msg->rsp[8];
			recv_msg->msg.data = recv_msg->msg_data;

			/*
			 * We chop off 10, not 9 bytes because the checksum
			 * at the end also needs to be removed.
			 */
			recv_msg->msg.data_len = msg->rsp_size - 10;
			FUNC8(recv_msg->msg_data, &msg->rsp[9],
			       msg->rsp_size - 10);
			if (FUNC0(intf, recv_msg))
				FUNC5(intf, unhandled_commands);
			else
				FUNC5(intf, handled_commands);
		}
	}

	return rv;
}