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
typedef  int /*<<< orphan*/  png_struct ;
typedef  scalar_t__ png_size_t ;
typedef  int /*<<< orphan*/  png_byte ;
struct TYPE_2__ {size_t offset; scalar_t__ size; int /*<<< orphan*/ * buffer; } ;
typedef  TYPE_1__ pngBuffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2( png_struct *png, png_byte *buffer, png_size_t size ){
	pngBuffer_t     *pb = (pngBuffer_t*) FUNC1( png );


	if ( ( pb->offset + size ) > pb->size ) {
		size = ( pb->size - pb->offset );
	}
	FUNC0( buffer, &pb->buffer[ pb->offset ], size );
	pb->offset += size;
	//%	Sys_Printf( "Copying %d bytes from 0x%08X to 0x%08X (offset: %d of %d)\n", size, &pb->buffer[ pb->offset ], buffer, pb->offset, pb->size );
}