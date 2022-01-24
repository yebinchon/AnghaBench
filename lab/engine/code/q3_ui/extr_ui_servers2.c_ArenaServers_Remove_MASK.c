#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_3__* servernode; } ;
typedef  TYPE_2__ table_t ;
struct TYPE_12__ {int /*<<< orphan*/  adrstr; } ;
typedef  TYPE_3__ servernode_t ;
struct TYPE_10__ {size_t curvalue; int /*<<< orphan*/  numitems; } ;
struct TYPE_13__ {int numfavoriteaddresses; size_t numqueriedservers; size_t currentping; TYPE_3__* favoriteaddresses; TYPE_1__ list; TYPE_2__* table; } ;

/* Variables and functions */
 int MAX_ADDRESSLENGTH ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__,int /*<<< orphan*/ ) ; 
 TYPE_8__ g_arenaservers ; 
 TYPE_3__* g_favoriteserverlist ; 
 int g_numfavoriteservers ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3( void )
{
	int				i;
	servernode_t*	servernodeptr;
	table_t*		tableptr;

	if (!g_arenaservers.list.numitems)
		return;

	// remove selected item from display list
	// items are in scattered order due to sort and cull
	// perform delete on list box contents, resync all lists

	tableptr      = &g_arenaservers.table[g_arenaservers.list.curvalue];
	servernodeptr = tableptr->servernode;

	// find address in master list
	for (i=0; i<g_arenaservers.numfavoriteaddresses; i++)
	{
		if (!FUNC0(g_arenaservers.favoriteaddresses[i],servernodeptr->adrstr))
		{
			// delete address from master list
			if (i < g_arenaservers.numfavoriteaddresses-1)
			{
				// shift items up
				FUNC1( &g_arenaservers.favoriteaddresses[i], &g_arenaservers.favoriteaddresses[i+1], (g_arenaservers.numfavoriteaddresses - i - 1)* MAX_ADDRESSLENGTH );
			}
			g_arenaservers.numfavoriteaddresses--;
			FUNC2( &g_arenaservers.favoriteaddresses[g_arenaservers.numfavoriteaddresses], 0, MAX_ADDRESSLENGTH );
			break;
		}
	}	

	// find address in server list
	for (i=0; i<g_numfavoriteservers; i++)
	{
		if (&g_favoriteserverlist[i] == servernodeptr)
		{

			// delete address from server list
			if (i < g_numfavoriteservers-1)
			{
				// shift items up
				FUNC1( &g_favoriteserverlist[i], &g_favoriteserverlist[i+1], (g_numfavoriteservers - i - 1)*sizeof(servernode_t));
			}
			g_numfavoriteservers--;
			FUNC2( &g_favoriteserverlist[ g_numfavoriteservers ], 0, sizeof(servernode_t));
			break;
		}
	}	

	g_arenaservers.numqueriedservers = g_arenaservers.numfavoriteaddresses;
	g_arenaservers.currentping       = g_arenaservers.numfavoriteaddresses;
}