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
struct TYPE_4__ {char* stringData; int* stringOffsets; } ;
struct TYPE_6__ {TYPE_1__ gameState; } ;
struct TYPE_5__ {int /*<<< orphan*/  sv_dlURL; int /*<<< orphan*/  sv_allowDownload; } ;

/* Variables and functions */
 size_t CS_SERVERINFO ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__ cl ; 
 TYPE_2__ clc ; 

__attribute__((used)) static void FUNC3(void)
{
	const char *serverInfo;

	serverInfo = cl.gameState.stringData
		+ cl.gameState.stringOffsets[ CS_SERVERINFO ];

	clc.sv_allowDownload = FUNC2(FUNC0(serverInfo,
		"sv_allowDownload"));
	FUNC1(clc.sv_dlURL,
		FUNC0(serverInfo, "sv_dlURL"),
		sizeof(clc.sv_dlURL));
}