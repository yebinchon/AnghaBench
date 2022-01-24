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
struct TYPE_4__ {void* length; void* offset; } ;
typedef  TYPE_1__ bspLump_t ;
struct TYPE_5__ {TYPE_1__* lumps; } ;
typedef  TYPE_2__ bspHeader_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3( FILE *file, bspHeader_t *header, int lumpNum, const void *data, int length ){
	bspLump_t   *lump;
	char pad[3] = {'\0', '\0', '\0'};
	unsigned int lengthU = length;
	unsigned int padLength = ((lengthU + 3) / 4) * 4 - lengthU;


	/* add lump to bsp file header */
	lump = &header->lumps[ lumpNum ];
	lump->offset = FUNC0( FUNC2( file ) );
	lump->length = FUNC0( length );

	/* write lump to file */
	FUNC1( file, data, length );
	if ( padLength != 0 ) {
		FUNC1( file, pad, padLength );
	}
}