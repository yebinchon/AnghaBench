#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ netadr_t ;
typedef  int /*<<< orphan*/  msg_t ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  int /*<<< orphan*/  byte ;
typedef  int /*<<< orphan*/  bufData ;
struct TYPE_9__ {scalar_t__ integer; } ;
struct TYPE_8__ {float value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAX_MSGLEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ RAND_MAX ; 
 TYPE_3__* com_sv_running ; 
 TYPE_2__* net_dropsim ; 
 int FUNC4 () ; 

void FUNC5(fd_set *fdr)
{
	byte bufData[MAX_MSGLEN + 1];
	netadr_t from = {0};
	msg_t netmsg;
	
	while(1)
	{
		FUNC2(&netmsg, bufData, sizeof(bufData));

		if(FUNC3(&from, &netmsg, fdr))
		{
			if(net_dropsim->value > 0.0f && net_dropsim->value <= 100.0f)
			{
				// com_dropsim->value percent of incoming packets get dropped.
				if(FUNC4() < (int) (((double) RAND_MAX) / 100.0 * (double) net_dropsim->value))
					continue;          // drop this packet
			}

			if(com_sv_running->integer)
				FUNC1(&from, &netmsg);
			else
				FUNC0(from, &netmsg);
		}
		else
			break;
	}
}