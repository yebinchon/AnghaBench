#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_5__ {int* filename; void* hcs; void* crc; void* ldaddress; void* filelen; void* build_date; void* rev_maj; void* rev_min; scalar_t__ control; void* magic; } ;
typedef  TYPE_1__ ldr_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,int) ; 

ldr_header_t* FUNC8 ( uint32_t magic, uint16_t rev_maj,uint16_t rev_min, uint32_t build_date, uint32_t filelen, uint32_t ldaddress, const char* filename, uint32_t crc_data )
{
	ldr_header_t* hd = FUNC1 ( sizeof ( ldr_header_t ) );
	hd->magic=FUNC3 ( magic );
	hd->control=0; //FixMe: Make use of it once compression is around
	hd->rev_min = FUNC3 ( rev_min );
	hd->rev_maj = FUNC3 ( rev_maj );
	hd->build_date = FUNC4 ( build_date );
	hd->filelen = FUNC4 ( filelen );
	hd->ldaddress = FUNC4 ( ldaddress );
	FUNC2 ( "Creating header for %s...\n", filename );
	if ( FUNC6 ( filename ) >63 )
	{
		FUNC2 ( "[!] Filename too long - stripping it to 63 bytes.\n" );
		FUNC7 ( ( char* ) &hd->filename, filename, 63 );
		hd->filename[63]=0x00;
	}
	else
	{
		FUNC5 ( ( char* ) &hd->filename, filename );
	}
	hd->crc=FUNC4 ( crc_data );
	hd->hcs = FUNC3 ( FUNC0 ( hd ) );
	return hd;
}