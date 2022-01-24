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
typedef  int /*<<< orphan*/  byte ;
struct TYPE_5__ {TYPE_1__* lumps; } ;
typedef  TYPE_2__ bspHeader_t ;
struct TYPE_4__ {int length; int offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  SYS_WRN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 scalar_t__ force ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ *,int) ; 

int FUNC3( bspHeader_t *header, int lump, void *dest, int size ){
	int length, offset;


	/* get lump length and offset */
	length = header->lumps[ lump ].length;
	offset = header->lumps[ lump ].offset;

	/* handle erroneous cases */
	if ( length == 0 ) {
		return 0;
	}
	if ( length % size ) {
		if ( force ) {
			FUNC1( SYS_WRN, "WARNING: CopyLump: odd lump size (%d) in lump %d\n", length, lump );
			return 0;
		}
		else{
			FUNC0( "CopyLump: odd lump size (%d) in lump %d", length, lump );
		}
	}

	/* copy block of memory and return */
	FUNC2( dest, (byte*) header + offset, length );
	return length / size;
}