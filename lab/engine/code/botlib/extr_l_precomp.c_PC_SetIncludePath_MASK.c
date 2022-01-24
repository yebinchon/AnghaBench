#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* includepath; } ;
typedef  TYPE_1__ source_t ;

/* Variables and functions */
 int /*<<< orphan*/  PATHSEPERATOR_STR ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (char*) ; 

void FUNC3(source_t *source, char *path)
{
	size_t len;

	FUNC0(source->includepath, path, sizeof(source->includepath)-1);

	len = FUNC2(source->includepath);
	//add trailing path seperator
	if (len > 0 && source->includepath[len-1] != '\\' &&
		source->includepath[len-1] != '/')
	{
		FUNC1(source->includepath, PATHSEPERATOR_STR);
	} //end if
}