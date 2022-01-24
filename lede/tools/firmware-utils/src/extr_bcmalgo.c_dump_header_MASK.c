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
typedef  int uint8_t ;
typedef  int uint16_t ;
struct TYPE_4__ {int /*<<< orphan*/  crc; int /*<<< orphan*/  her_znaet_chto; int /*<<< orphan*/  ldaddress; int /*<<< orphan*/  hcs; int /*<<< orphan*/  build_date; int /*<<< orphan*/  filelen; int /*<<< orphan*/  filename; int /*<<< orphan*/  rev_min; int /*<<< orphan*/  rev_maj; int /*<<< orphan*/  control; int /*<<< orphan*/  magic; } ;
typedef  TYPE_1__ ldr_header_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5 ( ldr_header_t* hd )
{
	FUNC2 ( "=== Header Information ===\n" );
	FUNC2 ( "Header magic:\t0x%04X\n",FUNC3 ( hd->magic ) );
	FUNC2 ( "Control:\t0x%04X (%s)\n",FUNC3 ( hd->control ), FUNC0 ( hd->control ) );
	FUNC2 ( "Major rev. :\t0x%04X\n",FUNC3 ( hd->rev_maj ) );
	FUNC2 ( "Minor rev. :\t0x%04X\n",FUNC3 ( hd->rev_min ) );
	FUNC2 ( "File name :\t%s\n", ( char* ) &hd->filename );
	FUNC2 ( "File length:\t%d bytes\n", FUNC4 ( hd->filelen ) );
	FUNC2 ( "Build time:\t0x%08X //FixMe: print in human-readable form\n", FUNC4 ( hd->build_date ) ); //FixMe:
	FUNC2 ( "HCS:\t\t0x%04X  ",FUNC3 ( hd->hcs ) );
	uint16_t hcs = FUNC1 ( hd );
	int ret=0;
	if ( hcs ==FUNC3 ( hd->hcs ) )
	{
		FUNC2 ( "(OK!)\n" );
	}
	else
	{
		FUNC2 ( "(ERROR! expected 0x%04X)\n",hcs );
		ret=1;
	}
//printf("HCS:\t0x%02X",reverse_endian32(hd->hcs));
	FUNC2 ( "Load address:\t0x%08X\n", FUNC4 ( hd->ldaddress ) ); //FixMe:
	FUNC2 ( "HNW:\t\t0x%04X\n",FUNC3 ( hd->her_znaet_chto ) ); //Hell knows what
	FUNC2 ( "CRC:\t\t0x%08X\n",FUNC4 ( hd->crc ) );
	FUNC2 ( "=== Binary Header Dump===\n" );
	int i,j;
	uint8_t* head = ( uint8_t* ) hd;
	for ( i=0;i<=sizeof ( ldr_header_t );i++ )
	{
		if ( i % 8==0 )
			FUNC2 ( "\n" );
		FUNC2 ( "0x%02x   ",head[i] );
	}
	FUNC2 ( "\n\n== End Of Header dump ==\n" );
	return ret;
}