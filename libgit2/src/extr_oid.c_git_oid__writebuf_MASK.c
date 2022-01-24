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
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int GIT_OID_HEXSZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/  const*) ; 

void FUNC4(git_buf *buf, const char *header, const git_oid *oid)
{
	char hex_oid[GIT_OID_HEXSZ];

	FUNC3(hex_oid, oid);
	FUNC2(buf, header);
	FUNC0(buf, hex_oid, GIT_OID_HEXSZ);
	FUNC1(buf, '\n');
}