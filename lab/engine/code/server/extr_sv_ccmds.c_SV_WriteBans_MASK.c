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
typedef  int /*<<< orphan*/  writebuf ;
struct TYPE_4__ {int /*<<< orphan*/  subnet; int /*<<< orphan*/  ip; int /*<<< orphan*/  isexception; } ;
typedef  TYPE_1__ serverBan_t ;
typedef  int /*<<< orphan*/  filepath ;
typedef  int /*<<< orphan*/  fileHandle_t ;
struct TYPE_5__ {int /*<<< orphan*/ * string; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MAX_QPATH ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* serverBans ; 
 int serverBansCount ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 TYPE_2__* sv_banFile ; 

__attribute__((used)) static void FUNC7(void)
{
	int index;
	fileHandle_t writeto;
	char filepath[MAX_QPATH];
	
	if(!sv_banFile->string || !*sv_banFile->string)
		return;
	
	FUNC0(filepath, sizeof(filepath), "%s/%s", FUNC2(), *sv_banFile->string);

	if((writeto = FUNC3(filepath)))
	{
		char writebuf[128];
		serverBan_t *curban;
		
		for(index = 0; index < serverBansCount; index++)
		{
			curban = &serverBans[index];
			
			FUNC0(writebuf, sizeof(writebuf), "%d %s %d\n",
				    curban->isexception, FUNC5(curban->ip), curban->subnet);
			FUNC4(writebuf, FUNC6(writebuf), writeto);
		}

		FUNC1(writeto);
	}
}