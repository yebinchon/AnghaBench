#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_4__ {int integer; } ;
struct TYPE_3__ {int integer; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEMOEXT ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (char*) ; 
 TYPE_2__* com_legacyprotocol ; 
 TYPE_1__* com_protocol ; 
 int* demo_protocols ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 char* FUNC3 (char const*,char) ; 

qboolean FUNC4(const char *filename, int namelen)
{
	char *ext_test;
	int index, protocol;

	ext_test = FUNC3(filename, '.');
	if(ext_test && !FUNC1(ext_test + 1, DEMOEXT, FUNC0(DEMOEXT) - 1))
	{
		protocol = FUNC2(ext_test + FUNC0(DEMOEXT));

		if(protocol == com_protocol->integer)
			return qtrue;

#ifdef LEGACY_PROTOCOL
		if(protocol == com_legacyprotocol->integer)
			return qtrue;
#endif

		for(index = 0; demo_protocols[index]; index++)
		{
			if(demo_protocols[index] == protocol)
			return qtrue;
		}
	}

	return qfalse;
}