#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_4__ {scalar_t__ type; } ;
typedef  TYPE_1__ netadr_t ;

/* Variables and functions */
 scalar_t__ NA_IP ; 
 int /*<<< orphan*/  NA_UNSPEC ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 char* FUNC2 (char*,char) ; 

__attribute__((used)) static qboolean FUNC3(netadr_t *dest, int *mask, char *adrstr)
{
	char *suffix;
	
	suffix = FUNC2(adrstr, '/');
	if(suffix)
	{
		*suffix = '\0';
		suffix++;
	}

	if(!FUNC0(adrstr, dest, NA_UNSPEC))
		return qtrue;

	if(suffix)
	{
		*mask = FUNC1(suffix);
		
		if(dest->type == NA_IP)
		{
			if(*mask < 1 || *mask > 32)
				*mask = 32;
		}
		else
		{
			if(*mask < 1 || *mask > 128)
				*mask = 128;
		}
	}
	else if(dest->type == NA_IP)
		*mask = 32;
	else
		*mask = 128;
	
	return qfalse;
}