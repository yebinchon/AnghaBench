#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  filepath ;
typedef  int /*<<< orphan*/  fileHandle_t ;
struct TYPE_8__ {scalar_t__ type; } ;
struct TYPE_7__ {int /*<<< orphan*/  integer; } ;
struct TYPE_6__ {int isexception; int subnet; TYPE_4__ ip; } ;
struct TYPE_5__ {int /*<<< orphan*/ * string; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int MAX_QPATH ; 
 scalar_t__ NA_IP ; 
 scalar_t__ NA_IP6 ; 
 int /*<<< orphan*/  NA_UNSPEC ; 
 scalar_t__ FUNC5 (char*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int SERVER_MAXBANS ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (int) ; 
 int FUNC8 (char*) ; 
 TYPE_3__* com_sv_running ; 
 TYPE_2__* serverBans ; 
 int serverBansCount ; 
 TYPE_1__* sv_banFile ; 

__attribute__((used)) static void FUNC9(void)
{
	int index, filelen;
	fileHandle_t readfrom;
	char *textbuf, *curpos, *maskpos, *newlinepos, *endpos;
	char filepath[MAX_QPATH];
	
	// make sure server is running
	if ( !com_sv_running->integer ) {
		return;
	}
	
	serverBansCount = 0;
	
	if(!sv_banFile->string || !*sv_banFile->string)
		return;

	FUNC0(filepath, sizeof(filepath), "%s/%s", FUNC2(), sv_banFile->string);

	if((filelen = FUNC4(filepath, &readfrom)) >= 0)
	{
		if(filelen < 2)
		{
			// Don't bother if file is too short.
			FUNC1(readfrom);
			return;
		}

		curpos = textbuf = FUNC7(filelen);
		
		filelen = FUNC3(textbuf, filelen, readfrom);
		FUNC1(readfrom);
		
		endpos = textbuf + filelen;
		
		for(index = 0; index < SERVER_MAXBANS && curpos + 2 < endpos; index++)
		{
			// find the end of the address string
			for(maskpos = curpos + 2; maskpos < endpos && *maskpos != ' '; maskpos++);
			
			if(maskpos + 1 >= endpos)
				break;

			*maskpos = '\0';
			maskpos++;
			
			// find the end of the subnet specifier
			for(newlinepos = maskpos; newlinepos < endpos && *newlinepos != '\n'; newlinepos++);
			
			if(newlinepos >= endpos)
				break;
			
			*newlinepos = '\0';
			
			if(FUNC5(curpos + 2, &serverBans[index].ip, NA_UNSPEC))
			{
				serverBans[index].isexception = (curpos[0] != '0');
				serverBans[index].subnet = FUNC8(maskpos);
				
				if(serverBans[index].ip.type == NA_IP &&
				   (serverBans[index].subnet < 1 || serverBans[index].subnet > 32))
				{
					serverBans[index].subnet = 32;
				}
				else if(serverBans[index].ip.type == NA_IP6 &&
					(serverBans[index].subnet < 1 || serverBans[index].subnet > 128))
				{
					serverBans[index].subnet = 128;
				}
			}
			
			curpos = newlinepos + 1;
		}
			
		serverBansCount = index;
		
		FUNC6(textbuf);
	}
}