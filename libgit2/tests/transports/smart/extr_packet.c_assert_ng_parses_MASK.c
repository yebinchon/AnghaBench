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
struct TYPE_2__ {int /*<<< orphan*/  msg; int /*<<< orphan*/  ref; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ git_pkt_ng ;
typedef  int /*<<< orphan*/  git_pkt ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_PKT_NG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,char const**,char const*,size_t) ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static void FUNC6(const char *line, const char *expected_ref, const char *expected_msg)
{
	size_t linelen = FUNC5(line) + 1;
	const char *endptr;
	git_pkt_ng *pkt;

	FUNC2(FUNC4((git_pkt **) &pkt, &endptr, line, linelen));
	FUNC0(pkt->type, GIT_PKT_NG);
	FUNC1(pkt->ref, expected_ref, FUNC5(expected_ref));
	FUNC1(pkt->msg, expected_msg, FUNC5(expected_msg));

	FUNC3((git_pkt *) pkt);
}