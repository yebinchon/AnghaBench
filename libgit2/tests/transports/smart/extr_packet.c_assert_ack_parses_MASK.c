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
struct TYPE_2__ {int /*<<< orphan*/  status; int /*<<< orphan*/  oid; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ git_pkt_ack ;
typedef  int /*<<< orphan*/  git_pkt ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  enum git_ack_status { ____Placeholder_git_ack_status } git_ack_status ;

/* Variables and functions */
 int GIT_PKT_ACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,char const**,char const*,size_t) ; 
 int FUNC6 (char const*) ; 

__attribute__((used)) static void FUNC7(const char *line, const char *expected_oid, enum git_ack_status expected_status)
{
	size_t linelen = FUNC6(line) + 1;
	const char *endptr;
	git_pkt_ack *pkt;
	git_oid oid;

	FUNC2(FUNC3(&oid, expected_oid));

	FUNC2(FUNC5((git_pkt **) &pkt, &endptr, line, linelen));
	FUNC0(pkt->type, GIT_PKT_ACK);
	FUNC1(&pkt->oid, &oid);
	FUNC0(pkt->status, expected_status);

	FUNC4((git_pkt *) pkt);
}