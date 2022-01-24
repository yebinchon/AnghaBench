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
union drbd_state {int aftr_isp; int peer_isp; int user_isp; } ;
struct drbd_device {int dummy; } ;
typedef  enum chg_state_flags { ____Placeholder_chg_state_flags } chg_state_flags ;

/* Variables and functions */
 int CS_DC_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct drbd_device*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,union drbd_state,union drbd_state,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int,int) ; 

__attribute__((used)) static void FUNC3(struct drbd_device *device, union drbd_state os, union drbd_state ns,
				 enum chg_state_flags flags)
{
	char pb[300];
	char *pbp = pb;

	pbp += FUNC1(pbp, os, ns, flags ^ CS_DC_MASK);

	if (ns.aftr_isp != os.aftr_isp)
		pbp += FUNC2(pbp, "aftr_isp( %d -> %d ) ",
			       os.aftr_isp,
			       ns.aftr_isp);
	if (ns.peer_isp != os.peer_isp)
		pbp += FUNC2(pbp, "peer_isp( %d -> %d ) ",
			       os.peer_isp,
			       ns.peer_isp);
	if (ns.user_isp != os.user_isp)
		pbp += FUNC2(pbp, "user_isp( %d -> %d ) ",
			       os.user_isp,
			       ns.user_isp);

	if (pbp != pb)
		FUNC0(device, "%s\n", pb);
}