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
struct TYPE_4__ {size_t mode; int /*<<< orphan*/  delay; int /*<<< orphan*/  port; int /*<<< orphan*/  unit; int /*<<< orphan*/  device; } ;
typedef  TYPE_1__ PIA ;

/* Variables and functions */
 size_t BPCK_VERSION ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void FUNC2( PIA *pi, char * scratch, int verbose )

{	char	*mode_string[5] = { "4-bit","8-bit","EPP-8",
				    "EPP-16","EPP-32" };

#ifdef DUMP_EEPROM
	int i;
#endif

	FUNC0(pi,scratch);

#ifdef DUMP_EEPROM
	if (verbose) {
	   for(i=0;i<128;i++)
		if ((scratch[i] < ' ') || (scratch[i] > '~'))
		    scratch[i] = '.';
	   printk("%s: bpck EEPROM: %64.64s\n",pi->device,scratch);
	   printk("%s:              %64.64s\n",pi->device,&scratch[64]);
	}
#endif

	FUNC1("%s: bpck %s, backpack %8.8s unit %d",
		pi->device,BPCK_VERSION,&scratch[110],pi->unit);
	FUNC1(" at 0x%x, mode %d (%s), delay %d\n",pi->port,
		pi->mode,mode_string[pi->mode],pi->delay);
}