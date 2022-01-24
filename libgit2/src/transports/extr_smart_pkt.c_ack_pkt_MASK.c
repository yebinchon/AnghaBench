#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  status; int /*<<< orphan*/  oid; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ git_pkt_ack ;
typedef  int /*<<< orphan*/  git_pkt ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ACK_COMMON ; 
 int /*<<< orphan*/  GIT_ACK_CONTINUE ; 
 int /*<<< orphan*/  GIT_ACK_READY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  GIT_ERROR_NET ; 
 size_t GIT_OID_HEXSZ ; 
 int /*<<< orphan*/  GIT_PKT_ACK ; 
 TYPE_1__* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (char const*,size_t,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static int FUNC6(git_pkt **out, const char *line, size_t len)
{
	git_pkt_ack *pkt;

	pkt = FUNC1(1, sizeof(git_pkt_ack));
	FUNC0(pkt);
	pkt->type = GIT_PKT_ACK;

	if (FUNC3(line, len, "ACK "))
		goto out_err;
	line += 4;
	len -= 4;

	if (len < GIT_OID_HEXSZ || FUNC5(&pkt->oid, line) < 0)
		goto out_err;
	line += GIT_OID_HEXSZ;
	len -= GIT_OID_HEXSZ;

	if (len && line[0] == ' ') {
		line++;
		len--;

		if (!FUNC3(line, len, "continue"))
			pkt->status = GIT_ACK_CONTINUE;
		else if (!FUNC3(line, len, "common"))
			pkt->status = GIT_ACK_COMMON;
		else if (!FUNC3(line, len, "ready"))
			pkt->status = GIT_ACK_READY;
		else
			goto out_err;
	}

	*out = (git_pkt *) pkt;

	return 0;

out_err:
	FUNC4(GIT_ERROR_NET, "error parsing ACK pkt-line");
	FUNC2(pkt);
	return -1;
}