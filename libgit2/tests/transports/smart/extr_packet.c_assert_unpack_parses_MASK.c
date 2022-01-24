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
struct TYPE_2__ {int /*<<< orphan*/  unpack_ok; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ git_pkt_unpack ;
typedef  int /*<<< orphan*/  git_pkt ;

/* Variables and functions */
 int GIT_PKT_UNPACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,char const**,char const*,size_t) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static void FUNC5(const char *line, bool ok)
{
	size_t linelen = FUNC4(line) + 1;
	const char *endptr;
	git_pkt_unpack *pkt;

	FUNC1(FUNC3((git_pkt **) &pkt, &endptr, line, linelen));
	FUNC0(pkt->type, GIT_PKT_UNPACK);
	FUNC0(pkt->unpack_ok, ok);

	FUNC2((git_pkt *) pkt);
}