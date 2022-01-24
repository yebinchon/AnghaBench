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
union drbd_state {scalar_t__ susp_nod; scalar_t__ susp_fen; scalar_t__ user_isp; scalar_t__ peer_isp; scalar_t__ aftr_isp; int /*<<< orphan*/  pdsk; int /*<<< orphan*/  disk; int /*<<< orphan*/  peer; int /*<<< orphan*/  role; int /*<<< orphan*/  conn; } ;
struct drbd_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drbd_device*,char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char,char,char,unsigned char,float,char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (union drbd_state) ; 

__attribute__((used)) static void FUNC5(struct drbd_device *device, const char *name, union drbd_state ns)
{
	FUNC2(device, " %s = { cs:%s ro:%s/%s ds:%s/%s %c%c%c%c%c%c }\n",
	    name,
	    FUNC0(ns.conn),
	    FUNC3(ns.role),
	    FUNC3(ns.peer),
	    FUNC1(ns.disk),
	    FUNC1(ns.pdsk),
	    FUNC4(ns) ? 's' : 'r',
	    ns.aftr_isp ? 'a' : '-',
	    ns.peer_isp ? 'p' : '-',
	    ns.user_isp ? 'u' : '-',
	    ns.susp_fen ? 'F' : '-',
	    ns.susp_nod ? 'N' : '-'
	    );
}