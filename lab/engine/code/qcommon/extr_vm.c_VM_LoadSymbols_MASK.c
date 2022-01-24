#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int instructionCount; int* instructionPointers; int numSymbols; TYPE_2__* symbols; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ vm_t ;
struct TYPE_7__ {int symValue; int /*<<< orphan*/  symName; struct TYPE_7__* next; } ;
typedef  TYPE_2__ vmSymbol_t ;
typedef  int /*<<< orphan*/  symbols ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_8__ {int /*<<< orphan*/  integer; } ;

/* Variables and functions */
 char* FUNC0 (char**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (char*,void**) ; 
 TYPE_2__* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int MAX_QPATH ; 
 int FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_3__* com_developer ; 
 int /*<<< orphan*/  h_high ; 
 int FUNC9 (char*) ; 

void FUNC10( vm_t *vm ) {
	union {
		char	*c;
		void	*v;
	} mapfile;
	char *text_p, *token;
	char	name[MAX_QPATH];
	char	symbols[MAX_QPATH];
	vmSymbol_t	**prev, *sym;
	int		count;
	int		value;
	int		chars;
	int		segment;
	int		numInstructions;

	// don't load symbols if not developer
	if ( !com_developer->integer ) {
		return;
	}

	FUNC1(vm->name, name, sizeof(name));
	FUNC3( symbols, sizeof( symbols ), "vm/%s.map", name );
	FUNC5( symbols, &mapfile.v );
	if ( !mapfile.c ) {
		FUNC2( "Couldn't load symbol file: %s\n", symbols );
		return;
	}

	numInstructions = vm->instructionCount;

	// parse the symbols
	text_p = mapfile.c;
	prev = &vm->symbols;
	count = 0;

	while ( 1 ) {
		token = FUNC0( &text_p );
		if ( !token[0] ) {
			break;
		}
		segment = FUNC7( token );
		if ( segment ) {
			FUNC0( &text_p );
			FUNC0( &text_p );
			continue;		// only load code segment values
		}

		token = FUNC0( &text_p );
		if ( !token[0] ) {
			FUNC2( "WARNING: incomplete line at end of file\n" );
			break;
		}
		value = FUNC7( token );

		token = FUNC0( &text_p );
		if ( !token[0] ) {
			FUNC2( "WARNING: incomplete line at end of file\n" );
			break;
		}
		chars = FUNC9( token );
		sym = FUNC6( sizeof( *sym ) + chars, h_high );
		*prev = sym;
		prev = &sym->next;
		sym->next = NULL;

		// convert value from an instruction number to a code offset
		if ( value >= 0 && value < numInstructions ) {
			value = vm->instructionPointers[value];
		}

		sym->symValue = value;
		FUNC8( sym->symName, token, chars + 1 );

		count++;
	}

	vm->numSymbols = count;
	FUNC2( "%i symbols parsed from %s\n", count, symbols );
	FUNC4( mapfile.v );
}