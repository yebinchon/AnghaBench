#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void FUNC1 ( const char* ename )
{
	FUNC0 ( "Firmware image packer and calculator for broadcom-based modems.\n" );
	FUNC0 ( "Part of bcm-utils package.\n" );
	FUNC0 ( "(c) 2009 Necromant (http://necromant.ath.cx). Thanks to Luke-jr for his initial work.\n" );
	FUNC0 ( "usage: %s [options]\n", ename );
	FUNC0 ( "Valid options are:\n" );
	FUNC0 ( "--magic_bytes=value \t- specify magic bytes at the beginning of the image. default - 3349\n" );
	FUNC0 ( "\t\t\t these can be sa2100 (for DPC2100 modem),\n\t\t\t sa3349 (haxorware guys use this one for some reason),\n\t\t\t or a custom hex value e.g. 0xFFFF\n" );
	FUNC0 ( "--compress \t\t - Make use of LZMA (weird!) compression (Doesn't work yet).\n" );
	FUNC0 ( "--rev_maj=value\t\t - major revision number. default 0\n" );
	FUNC0 ( "--rev_min=value\t\t - minor revision number default 0\n" );
	FUNC0 ( "--filename=value\t - use this filename in header instead of default (input filename)\n" );
	FUNC0 ( "--ldaddress=value\t - hex value of the target load address. defaults to 0x80010000\n" );
	FUNC0 ( "--input_file=value\t - What file are we packing?\n" );
	FUNC0 ( "--output_file=value\t - What file shall we write? (default: image.bin)\n" );
#ifdef _HAX0RSTYLE
	printf ( "--credz\t - Give some credz!\n" );
#endif
	FUNC0 ( "\n" );
}