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
struct TYPE_3__ {int /*<<< orphan*/  name; int /*<<< orphan*/  oid; } ;
struct TYPE_4__ {int /*<<< orphan*/  capabilities; TYPE_1__ head; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ git_pkt_ref ;
typedef  int /*<<< orphan*/  git_pkt ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_PKT_REF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,char const**,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 

__attribute__((used)) static void FUNC9(const char *line, size_t linelen, const char *expected_oid,
	const char *expected_ref, const char *expected_capabilities)
{
	const char *endptr;
	git_pkt_ref *pkt;
	git_oid oid;

	FUNC4(FUNC5(&oid, expected_oid));

	FUNC4(FUNC7((git_pkt **) &pkt, &endptr, line, linelen));
	FUNC0(pkt->type, GIT_PKT_REF);
	FUNC1(&pkt->head.oid, &oid);
	FUNC3(pkt->head.name, expected_ref, FUNC8(expected_ref));
	if (expected_capabilities)
		FUNC3(pkt->capabilities, expected_capabilities, FUNC8(expected_capabilities));
	else
		FUNC2(NULL, pkt->capabilities);

	FUNC6((git_pkt *) pkt);
}