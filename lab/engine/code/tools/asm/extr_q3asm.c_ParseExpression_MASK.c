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
 int FUNC0 (char*) ; 
 int MAX_LINE_LENGTH ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 char* token ; 

__attribute__((used)) static int FUNC3(void) {
	/* Hand optimization, PhaethonH */
	int		i, j;
	char	sym[MAX_LINE_LENGTH];
	int		v;

	/* Skip over a leading minus. */
	for ( i = ((token[0] == '-') ? 1 : 0) ; i < MAX_LINE_LENGTH ; i++ ) {
		if ( token[i] == '+' || token[i] == '-' || token[i] == 0 ) {
			break;
		}
	}

	FUNC2( sym, token, i );
	sym[i] = 0;

	switch (*sym) {  /* Resolve depending on first character. */
/* Optimizing compilers can convert cases into "calculated jumps".  I think these are faster.  -PH */
		case '-':
		case '0': case '1': case '2': case '3': case '4':
		case '5': case '6': case '7': case '8': case '9':
			v = FUNC1(sym);
			break;
		default:
			v = FUNC0(sym);
			break;
	}

	// parse add / subtract offsets
	while ( token[i] != 0 ) {
		for ( j = i + 1 ; j < MAX_LINE_LENGTH ; j++ ) {
			if ( token[j] == '+' || token[j] == '-' || token[j] == 0 ) {
				break;
			}
		}

		FUNC2( sym, token+i+1, j-i-1 );
		sym[j-i-1] = 0;

		switch (token[i]) {
			case '+':
				v += FUNC1(sym);
				break;
			case '-':
				v -= FUNC1(sym);
				break;
		}

		i = j;
	}

	return v;
}