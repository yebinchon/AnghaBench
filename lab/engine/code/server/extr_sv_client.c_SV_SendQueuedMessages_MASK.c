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
struct TYPE_6__ {scalar_t__ state; } ;
typedef  TYPE_1__ client_t ;
struct TYPE_8__ {int integer; } ;
struct TYPE_7__ {TYPE_1__* clients; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 TYPE_3__* sv_maxclients ; 
 TYPE_2__ svs ; 

int FUNC2(void)
{
	int i, retval = -1, nextFragT;
	client_t *cl;
	
	for(i=0; i < sv_maxclients->integer; i++)
	{
		cl = &svs.clients[i];
		
		if(cl->state)
		{
			nextFragT = FUNC1(cl);

			if(!nextFragT)
				nextFragT = FUNC0(cl);

			if(nextFragT >= 0 && (retval == -1 || retval > nextFragT))
				retval = nextFragT;
		}
	}

	return retval;
}