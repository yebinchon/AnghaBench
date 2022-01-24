#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  userinfo ;
struct TYPE_4__ {int client; } ;
typedef  TYPE_1__ gentity_t ;
typedef  int /*<<< orphan*/  arg ;
struct TYPE_5__ {int clients; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 int MAX_INFO_STRING ; 
 int MAX_TOKEN_CHARS ; 
 int FUNC2 (char*) ; 
 TYPE_2__ level ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 

void FUNC8( gentity_t *ent ) {
	char userinfo[MAX_INFO_STRING];
	char		arg[MAX_TOKEN_CHARS];
	int task;
	int client = ent->client - level.clients;

	if ( FUNC3() != 2 ) {
		return;
	}
	FUNC4( 1, arg, sizeof( arg ) );
	task = FUNC2( arg );

	FUNC5(client, userinfo, sizeof(userinfo));
	FUNC1(userinfo, "teamtask", FUNC7("%d", task));
	FUNC6(client, userinfo);
	FUNC0(client);
}