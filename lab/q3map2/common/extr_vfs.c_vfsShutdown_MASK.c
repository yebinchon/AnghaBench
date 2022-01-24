#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  unzFile ;
struct TYPE_8__ {struct TYPE_8__* name; } ;
typedef  TYPE_1__ VFS_PAKFILE ;
struct TYPE_9__ {TYPE_1__* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_2__* g_pakFiles ; 
 TYPE_2__* FUNC1 (TYPE_2__*,TYPE_1__*) ; 
 TYPE_2__* g_unzFiles ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(){
	while ( g_unzFiles )
	{
		FUNC2( (unzFile)g_unzFiles->data );
		g_unzFiles = FUNC1( g_unzFiles, g_unzFiles->data );
	}

	while ( g_pakFiles )
	{
		VFS_PAKFILE* file = (VFS_PAKFILE*)g_pakFiles->data;
		FUNC0( file->name );
		FUNC0( file );
		g_pakFiles = FUNC1( g_pakFiles, file );
	}
}