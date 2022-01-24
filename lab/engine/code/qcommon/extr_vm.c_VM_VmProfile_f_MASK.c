#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int numSymbols; TYPE_2__* symbols; } ;
typedef  TYPE_1__ vm_t ;
struct TYPE_8__ {double profileCount; int /*<<< orphan*/  symName; struct TYPE_8__* next; } ;
typedef  TYPE_2__ vmSymbol_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,double,...) ; 
 int /*<<< orphan*/  VM_ProfileSort ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__**) ; 
 TYPE_2__** FUNC2 (int) ; 
 TYPE_1__* lastVM ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__**,int,int,int /*<<< orphan*/ ) ; 

void FUNC4( void ) {
	vm_t		*vm;
	vmSymbol_t	**sorted, *sym;
	int			i;
	double		total;

	if ( !lastVM ) {
		return;
	}

	vm = lastVM;

	if ( !vm->numSymbols ) {
		return;
	}

	sorted = FUNC2( vm->numSymbols * sizeof( *sorted ) );
	sorted[0] = vm->symbols;
	total = sorted[0]->profileCount;
	for ( i = 1 ; i < vm->numSymbols ; i++ ) {
		sorted[i] = sorted[i-1]->next;
		total += sorted[i]->profileCount;
	}

	FUNC3( sorted, vm->numSymbols, sizeof( *sorted ), VM_ProfileSort );

	for ( i = 0 ; i < vm->numSymbols ; i++ ) {
		int		perc;

		sym = sorted[i];

		perc = 100 * (float) sym->profileCount / total;
		FUNC0( "%2i%% %9i %s\n", perc, sym->profileCount, sym->symName );
		sym->profileCount = 0;
	}

	FUNC0("    %9.0f total\n", total );

	FUNC1( sorted );
}