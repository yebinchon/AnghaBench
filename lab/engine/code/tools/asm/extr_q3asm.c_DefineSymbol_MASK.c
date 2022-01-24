#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int hash; int value; struct TYPE_6__* next; int /*<<< orphan*/  segment; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ symbol_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int FUNC1 (char*) ; 
 int MAX_LINE_LENGTH ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int currentFileIndex ; 
 int /*<<< orphan*/  currentSegment ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int,char*) ; 
 TYPE_1__* lastSymbol ; 
 TYPE_1__* FUNC5 (int) ; 
 int passNumber ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*,int) ; 
 TYPE_1__* symbols ; 
 int /*<<< orphan*/  symtable ; 

__attribute__((used)) static void FUNC7( char *sym, int value ) {
	/* Hand optimization by PhaethonH */
	symbol_t	*s;
	char		expanded[MAX_LINE_LENGTH];
	int			hash;

	if ( passNumber == 1 ) {
		return;
	}

	// add the file prefix to local symbols to guarantee unique
	if ( sym[0] == '$' ) {
		FUNC6( expanded, "%s_%i", sym, currentFileIndex );
		sym = expanded;
	}

	hash = FUNC1( sym );

	if (FUNC4(symtable, hash, sym)) {
		FUNC0( "Multiple definitions for %s\n", sym );
		return;
	}

	s = FUNC5( sizeof( *s ) );
	s->next = NULL;
	s->name = FUNC2( sym );
	s->hash = hash;
	s->value = value;
	s->segment = currentSegment;

	FUNC3(symtable, hash, s);

/*
  Hash table lookup already speeds up symbol lookup enormously.
  We postpone sorting until end of pass 0.
  Since we're not doing the insertion sort, lastSymbol should always
   wind up pointing to the end of list.
  This allows constant time for adding to the list.
 -PH
*/
	if (symbols == 0) {
		lastSymbol = symbols = s;
	} else {
		lastSymbol->next = s;
		lastSymbol = s;
	}
}