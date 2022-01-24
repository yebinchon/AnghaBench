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
typedef  int /*<<< orphan*/  oidhex ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_OID_HEXSZ ; 
 int FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int /*<<< orphan*/  pkt_have_prefix ; 

int FUNC3(git_oid *oid, git_buf *buf)
{
	char oidhex[GIT_OID_HEXSZ + 1];

	FUNC2(oidhex, 0x0, sizeof(oidhex));
	FUNC1(oidhex, oid);
	return FUNC0(buf, "%s%s\n", pkt_have_prefix, oidhex);
}