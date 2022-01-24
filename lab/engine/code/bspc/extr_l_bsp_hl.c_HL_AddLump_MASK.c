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
struct TYPE_3__ {void* filelen; void* fileofs; } ;
typedef  TYPE_1__ hl_lump_t ;
struct TYPE_4__ {TYPE_1__* lumps; } ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* hl_header ; 
 int /*<<< orphan*/  wadfile ; 

void FUNC3 (int lumpnum, void *data, int len)
{
	hl_lump_t *lump;

	lump = &hl_header->lumps[lumpnum];
	
	lump->fileofs = FUNC0( FUNC2(wadfile) );
	lump->filelen = FUNC0(len);
	FUNC1 (wadfile, data, (len+3)&~3);
}