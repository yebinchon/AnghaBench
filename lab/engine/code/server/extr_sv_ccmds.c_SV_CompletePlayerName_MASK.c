#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  namesPtr ;
typedef  int /*<<< orphan*/  names ;
struct TYPE_4__ {int /*<<< orphan*/  name; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ client_t ;
struct TYPE_6__ {int integer; } ;
struct TYPE_5__ {TYPE_1__* clients; } ;

/* Variables and functions */
 int /*<<< orphan*/  Com_strCompare ; 
 int /*<<< orphan*/  FUNC0 (char const**,int) ; 
 int MAX_CLIENTS ; 
 int MAX_NAME_LENGTH ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,int,int,int /*<<< orphan*/ ) ; 
 TYPE_3__* sv_maxclients ; 
 TYPE_2__ svs ; 

__attribute__((used)) static void FUNC4( char *args, int argNum ) {
	if( argNum == 2 ) {
		char		names[MAX_CLIENTS][MAX_NAME_LENGTH];
		const char	*namesPtr[MAX_CLIENTS];
		client_t	*cl;
		int			i;
		int			nameCount;
		int			clientCount;

		nameCount = 0;
		clientCount = sv_maxclients->integer;

		for ( i=0, cl=svs.clients ; i < clientCount; i++,cl++ ) {
			if ( !cl->state ) {
				continue;
			}
			if( i >= MAX_CLIENTS ) {
				break;
			}
			FUNC2( names[nameCount], cl->name, sizeof(names[nameCount]) );
			FUNC1( names[nameCount] );

			namesPtr[nameCount] = names[nameCount];

			nameCount++;
		}
		FUNC3( (void*)namesPtr, nameCount, sizeof( namesPtr[0] ), Com_strCompare );

		FUNC0( namesPtr, nameCount );
	}
}