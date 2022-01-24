#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ unsentFragments; } ;
struct TYPE_6__ {scalar_t__ netchan_start_queue; TYPE_5__ netchan; } ;
typedef  TYPE_1__ client_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 

int FUNC3(client_t *client)
{
	if(client->netchan.unsentFragments)
	{
		FUNC0(&client->netchan);
		return FUNC2(client);
	}
	else if(client->netchan_start_queue)
	{
		FUNC1(client);
		return FUNC2(client);
	}
	
	return -1;
}