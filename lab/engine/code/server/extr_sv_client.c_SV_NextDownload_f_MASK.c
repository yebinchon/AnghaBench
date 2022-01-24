#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int downloadClientBlock; scalar_t__* downloadBlockSize; int /*<<< orphan*/  downloadSendTime; int /*<<< orphan*/  downloadName; } ;
typedef  TYPE_1__ client_t ;
struct TYPE_7__ {int /*<<< orphan*/  time; TYPE_1__* clients; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 size_t MAX_DOWNLOAD_WINDOW ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_2__ svs ; 

__attribute__((used)) static void FUNC6( client_t *cl )
{
	int block = FUNC5( FUNC0(1) );

	if (block == cl->downloadClientBlock) {
		FUNC1( "clientDownload: %d : client acknowledge of block %d\n", (int) (cl - svs.clients), block );

		// Find out if we are done.  A zero-length block indicates EOF
		if (cl->downloadBlockSize[cl->downloadClientBlock % MAX_DOWNLOAD_WINDOW] == 0) {
			FUNC2( "clientDownload: %d : file \"%s\" completed\n", (int) (cl - svs.clients), cl->downloadName );
			FUNC3( cl );
			return;
		}

		cl->downloadSendTime = svs.time;
		cl->downloadClientBlock++;
		return;
	}
	// We aren't getting an acknowledge for the correct block, drop the client
	// FIXME: this is bad... the client will never parse the disconnect message
	//			because the cgame isn't loaded yet
	FUNC4( cl, "broken download" );
}