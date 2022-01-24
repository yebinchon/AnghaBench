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
typedef  int /*<<< orphan*/  tn ;
struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct ead_msg {int /*<<< orphan*/  type; } ;
struct ead_packet {struct ead_msg msg; } ;
struct ead_msg_cmd_data {int done; int /*<<< orphan*/  data; } ;
struct ead_msg_cmd {scalar_t__* data; int /*<<< orphan*/  timeout; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  fd_set ;
struct TYPE_2__ {struct ead_msg msg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int,int /*<<< orphan*/ ,int) ; 
#define  EAD_CMD_BACKGROUND 129 
#define  EAD_CMD_NORMAL 128 
 int EAD_CMD_TIMEOUT ; 
 void* FUNC1 (struct ead_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  O_RDWR ; 
 int PCAP_TIMEOUT ; 
 int /*<<< orphan*/  SIGKILL ; 
 int child_pending ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct ead_msg_cmd* cmd ; 
 int /*<<< orphan*/  cmd_data ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int FUNC6 (struct ead_msg*) ; 
 int /*<<< orphan*/  FUNC7 (struct ead_msg*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ead_packet*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct timeval*,struct timeval*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int*) ; 
 TYPE_1__* pktbuf ; 
 int FUNC19 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC20 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 

__attribute__((used)) static bool
FUNC22(struct ead_packet *pkt, int len, int *nstate)
{
	struct ead_msg *msg = &pkt->msg;
	struct ead_msg_cmd *cmd = FUNC1(msg, cmd);
	struct ead_msg_cmd_data *cmddata;
	struct timeval tv, to, tn;
	int pfd[2], fd;
	fd_set fds;
	pid_t pid;
	bool stream = false;
	int timeout;
	int type;
	int datalen;

	datalen = FUNC6(msg) - sizeof(struct ead_msg_cmd);
	if (datalen <= 0)
		return false;

	type = FUNC16(cmd->type);
	timeout = FUNC16(cmd->timeout);

	FUNC3(&fds);
	cmd->data[datalen] = 0;
	switch(type) {
	case EAD_CMD_NORMAL:
		if (FUNC18(pfd) < 0)
			return false;

		FUNC10(pfd[0], F_SETFL, O_NONBLOCK | FUNC10(pfd[0], F_GETFL));
		child_pending = true;
		pid = FUNC11();
		if (pid == 0) {
			FUNC4(pfd[0]);
			fd = FUNC17("/dev/null", O_RDWR);
			if (fd > 0) {
				FUNC5(fd, 0);
				FUNC5(pfd[1], 1);
				FUNC5(pfd[1], 2);
			}
			FUNC21((char *)cmd->data);
			FUNC9(0);
		} else if (pid > 0) {
			FUNC4(pfd[1]);
			if (!timeout)
				timeout = EAD_CMD_TIMEOUT;

			stream = true;
			break;
		}
		return false;
	case EAD_CMD_BACKGROUND:
		pid = FUNC11();
		if (pid == 0) {
			/* close stdin, stdout, stderr, replace with fd to /dev/null */
			fd = FUNC17("/dev/null", O_RDWR);
			if (fd > 0) {
				FUNC5(fd, 0);
				FUNC5(fd, 1);
				FUNC5(fd, 2);
			}
			FUNC21((char *)cmd->data);
			FUNC9(0);
		} else if (pid > 0) {
			break;
		}
		return false;
	default:
		return false;
	}

	msg = &pktbuf->msg;
	cmddata = FUNC1(msg, cmd_data);

	if (stream) {
		int nfds, bytes;

		/* send keepalive packets every 200 ms so that the client doesn't timeout */
		FUNC12(&to, NULL);
		FUNC14(&tn, &to, sizeof(tn));
		tv.tv_usec = PCAP_TIMEOUT * 1000;
		tv.tv_sec = 0;
		do {
			cmddata->done = 0;
			FUNC2(pfd[0], &fds);
			nfds = FUNC20(pfd[0] + 1, &fds, NULL, NULL, &tv);
			bytes = 0;
			if (nfds > 0) {
				bytes = FUNC19(pfd[0], cmddata->data, 1024);
				if (bytes < 0)
					bytes = 0;
			}
			if (!bytes && !child_pending)
				break;
			FUNC0(3, "Sending %d bytes of console data, type=%d, timeout=%d\n", bytes, FUNC15(msg->type), timeout);
			FUNC7(msg, sizeof(struct ead_msg_cmd_data) + bytes);
			FUNC8(pkt);
			FUNC12(&tn, NULL);
		} while (tn.tv_sec < to.tv_sec + timeout);
		if (child_pending) {
			FUNC13(pid, SIGKILL);
			return false;
		}
	}
	cmddata->done = 1;
	FUNC7(msg, sizeof(struct ead_msg_cmd_data));

	return true;
}