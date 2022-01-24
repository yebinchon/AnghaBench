#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ git_pkt ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_PKT_FLUSH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**,char const**,char const*,size_t) ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static void FUNC6(const char *line)
{
	size_t linelen = FUNC5(line) + 1;
	const char *endptr;
	git_pkt *pkt;

	FUNC2(FUNC4((git_pkt **) &pkt, &endptr, line, linelen));
	FUNC0(pkt->type, GIT_PKT_FLUSH);
	FUNC1(endptr, line + 4, linelen - 4);

	FUNC3((git_pkt *) pkt);
}