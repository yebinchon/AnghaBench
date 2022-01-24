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
union drbd_state {scalar_t__ role; scalar_t__ peer; scalar_t__ conn; scalar_t__ disk; scalar_t__ pdsk; } ;
typedef  enum chg_state_flags { ____Placeholder_chg_state_flags } chg_state_flags ;

/* Variables and functions */
 int CS_DC_CONN ; 
 int CS_DC_DISK ; 
 int CS_DC_PDSK ; 
 int CS_DC_PEER ; 
 int CS_DC_ROLE ; 
 char* FUNC0 (scalar_t__) ; 
 char* FUNC1 (scalar_t__) ; 
 char* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,char*) ; 

__attribute__((used)) static long FUNC4(char *pb, union drbd_state os, union drbd_state ns,
			       enum chg_state_flags flags)
{
	char *pbp;
	pbp = pb;
	*pbp = 0;

	if (ns.role != os.role && flags & CS_DC_ROLE)
		pbp += FUNC3(pbp, "role( %s -> %s ) ",
			       FUNC2(os.role),
			       FUNC2(ns.role));
	if (ns.peer != os.peer && flags & CS_DC_PEER)
		pbp += FUNC3(pbp, "peer( %s -> %s ) ",
			       FUNC2(os.peer),
			       FUNC2(ns.peer));
	if (ns.conn != os.conn && flags & CS_DC_CONN)
		pbp += FUNC3(pbp, "conn( %s -> %s ) ",
			       FUNC0(os.conn),
			       FUNC0(ns.conn));
	if (ns.disk != os.disk && flags & CS_DC_DISK)
		pbp += FUNC3(pbp, "disk( %s -> %s ) ",
			       FUNC1(os.disk),
			       FUNC1(ns.disk));
	if (ns.pdsk != os.pdsk && flags & CS_DC_PDSK)
		pbp += FUNC3(pbp, "pdsk( %s -> %s ) ",
			       FUNC1(os.pdsk),
			       FUNC1(ns.pdsk));

	return pbp - pb;
}