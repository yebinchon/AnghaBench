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
typedef  union drbd_state {int dummy; } drbd_state ;
struct drbd_connection {int dummy; } ;
typedef  enum chg_state_flags { ____Placeholder_chg_state_flags } chg_state_flags ;

/* Variables and functions */
 int CS_DC_SUSP ; 
 int /*<<< orphan*/  FUNC0 (struct drbd_connection*,char*,char*) ; 
 int FUNC1 (union drbd_state) ; 
 int /*<<< orphan*/  FUNC2 (char*,union drbd_state,union drbd_state,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int,int) ; 

__attribute__((used)) static void FUNC4(struct drbd_connection *connection, union drbd_state os, union drbd_state ns,
				 enum chg_state_flags flags)
{
	char pb[300];
	char *pbp = pb;

	pbp += FUNC2(pbp, os, ns, flags);

	if (FUNC1(ns) != FUNC1(os) && flags & CS_DC_SUSP)
		pbp += FUNC3(pbp, "susp( %d -> %d ) ",
			       FUNC1(os),
			       FUNC1(ns));

	if (pbp != pb)
		FUNC0(connection, "%s\n", pb);
}