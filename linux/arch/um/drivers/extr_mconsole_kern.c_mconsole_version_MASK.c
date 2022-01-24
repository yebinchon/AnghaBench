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
struct mc_request {int dummy; } ;
struct TYPE_2__ {char* sysname; char* nodename; char* release; char* version; char* machine; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mc_request*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*,char*,char*,char*,char*) ; 
 TYPE_1__* FUNC2 () ; 

void FUNC3(struct mc_request *req)
{
	char version[256];

	FUNC1(version, "%s %s %s %s %s", FUNC2()->sysname,
		FUNC2()->nodename, FUNC2()->release, FUNC2()->version,
		FUNC2()->machine);
	FUNC0(req, version, 0, 0);
}