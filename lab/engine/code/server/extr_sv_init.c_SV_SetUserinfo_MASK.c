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
struct TYPE_6__ {int integer; } ;
struct TYPE_5__ {TYPE_1__* clients; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; int /*<<< orphan*/  userinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  ERR_DROP ; 
 char const* FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int) ; 
 TYPE_3__* sv_maxclients ; 
 TYPE_2__ svs ; 

void FUNC3( int index, const char *val ) {
	if ( index < 0 || index >= sv_maxclients->integer ) {
		FUNC0 (ERR_DROP, "SV_SetUserinfo: bad index %i", index);
	}

	if ( !val ) {
		val = "";
	}

	FUNC2( svs.clients[index].userinfo, val, sizeof( svs.clients[ index ].userinfo ) );
	FUNC2( svs.clients[index].name, FUNC1( val, "name" ), sizeof(svs.clients[index].name) );
}