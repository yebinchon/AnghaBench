#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  demoExt ;
struct TYPE_2__ {int demoCount; int /*<<< orphan*/ * demoList; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DEMOEXT ; 
 int MAX_DEMOS ; 
 int NAMEBUFSIZE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char*) ; 
 int FUNC4 (char*) ; 
 int FUNC5 (char*,char*,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__ uiInfo ; 

__attribute__((used)) static void FUNC6( void ) {
	char	demolist[NAMEBUFSIZE];
	char	demoExt[32];
	char	*demoname;
	int	i, j, len;
	int	protocol, protocolLegacy;

	protocolLegacy = FUNC4("com_legacyprotocol");
	protocol = FUNC4("com_protocol");

	if(!protocol)
		protocol = FUNC4("protocol");
	if(protocolLegacy == protocol)
		protocolLegacy = 0;

	FUNC1(demoExt, sizeof(demoExt), ".%s%d", DEMOEXT, protocol);
	uiInfo.demoCount = FUNC5("demos", demoExt, demolist, FUNC0(demolist));
	
	demoname = demolist;
	i = 0;

	for(j = 0; j < 2; j++)
	{
		if(uiInfo.demoCount > MAX_DEMOS)
			uiInfo.demoCount = MAX_DEMOS;

		for(; i < uiInfo.demoCount; i++)
		{
			len = FUNC3(demoname);
			uiInfo.demoList[i] = FUNC2(demoname);
			demoname += len + 1;
		}
		
		if(!j)
		{
		        if(protocolLegacy > 0 && uiInfo.demoCount < MAX_DEMOS)
		        {
                        	FUNC1(demoExt, sizeof(demoExt), ".%s%d", DEMOEXT, protocolLegacy);
                        	uiInfo.demoCount += FUNC5("demos", demoExt, demolist, FUNC0(demolist));
                        	demoname = demolist;
                        }
                        else
                                break;
		}
	}

}