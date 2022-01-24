#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  msg_t ;
typedef  int /*<<< orphan*/  msgBuffer ;
struct TYPE_6__ {int /*<<< orphan*/  lastClientCommand; scalar_t__* downloadName; scalar_t__ state; } ;
typedef  TYPE_1__ client_t ;
typedef  int /*<<< orphan*/  byte ;
struct TYPE_8__ {int integer; } ;
struct TYPE_7__ {TYPE_1__* clients; } ;

/* Variables and functions */
 int MAX_MSGLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_3__* sv_maxclients ; 
 int /*<<< orphan*/  svc_EOF ; 
 TYPE_2__ svs ; 

int FUNC5(void)
{
	int i, numDLs = 0, retval;
	client_t *cl;
	msg_t msg;
	byte msgBuffer[MAX_MSGLEN];
	
	for(i=0; i < sv_maxclients->integer; i++)
	{
		cl = &svs.clients[i];
		
		if(cl->state && *cl->downloadName)
		{
			FUNC0(&msg, msgBuffer, sizeof(msgBuffer));
			FUNC2(&msg, cl->lastClientCommand);
			
			retval = FUNC4(cl, &msg);
				
			if(retval)
			{
				FUNC1(&msg, svc_EOF);
				FUNC3(cl, &msg);
				numDLs += retval;
			}
		}
	}

	return numDLs;
}