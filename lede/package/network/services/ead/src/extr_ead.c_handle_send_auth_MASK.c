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
struct ead_msg {int /*<<< orphan*/  len; } ;
struct ead_packet {struct ead_msg msg; } ;
struct ead_msg_auth {int /*<<< orphan*/  data; } ;
struct TYPE_2__ {struct ead_msg msg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 struct ead_msg_auth* FUNC1 (struct ead_msg*,struct ead_msg_auth*) ; 
 int EAD_TYPE_SEND_CMD ; 
 int EAD_TYPE_SET_USERNAME ; 
 struct ead_msg_auth* auth ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* pktbuf ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ts ; 

__attribute__((used)) static bool
FUNC6(struct ead_packet *pkt, int len, int *nstate)
{
	struct ead_msg *msg = &pkt->msg;
	struct ead_msg_auth *auth = FUNC1(msg, auth);

	if (FUNC5(ts, auth->data) != 0) {
		FUNC0(2, "Client authentication failed\n");
		*nstate = EAD_TYPE_SET_USERNAME;
		return false;
	}

	msg = &pktbuf->msg;
	auth = FUNC1(msg, auth);
	msg->len = FUNC2(sizeof(struct ead_msg_auth));

	FUNC0(2, "Client authentication successful\n");
	FUNC3(auth->data, FUNC4(ts), sizeof(auth->data));

	*nstate = EAD_TYPE_SEND_CMD;
	return true;
}