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
typedef  int fileHandle_t ;
struct TYPE_4__ {int /*<<< orphan*/ * o; } ;
struct TYPE_5__ {TYPE_1__ file; } ;
struct TYPE_6__ {scalar_t__ zipFile; TYPE_2__ handleFiles; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ERR_DROP ; 
 int MAX_FILE_HANDLES ; 
 TYPE_3__* fsh ; 
 scalar_t__ qtrue ; 

__attribute__((used)) static FILE	*FUNC1( fileHandle_t f ) {
	if ( f < 1 || f >= MAX_FILE_HANDLES ) {
		FUNC0( ERR_DROP, "FS_FileForHandle: out of range" );
	}
	if (fsh[f].zipFile == qtrue) {
		FUNC0( ERR_DROP, "FS_FileForHandle: can't get FILE on zip file" );
	}
	if ( ! fsh[f].handleFiles.file.o ) {
		FUNC0( ERR_DROP, "FS_FileForHandle: NULL" );
	}
	
	return fsh[f].handleFiles.file.o;
}