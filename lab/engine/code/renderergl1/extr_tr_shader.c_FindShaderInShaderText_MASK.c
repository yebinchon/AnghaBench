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
 char* FUNC0 (char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_SHADERTEXT_HASH ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char**,int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qtrue ; 
 char* s_shaderText ; 
 char*** shaderTextHashTable ; 

__attribute__((used)) static char *FUNC4( const char *shadername ) {

	char *token, *p;

	int i, hash;

	hash = FUNC3(shadername, MAX_SHADERTEXT_HASH);

	if(shaderTextHashTable[hash])
	{
		for (i = 0; shaderTextHashTable[hash][i]; i++)
		{
			p = shaderTextHashTable[hash][i];
			token = FUNC0(&p, qtrue);
		
			if(!FUNC1(token, shadername))
				return p;
		}
	}

	p = s_shaderText;

	if ( !p ) {
		return NULL;
	}

	// look for label
	while ( 1 ) {
		token = FUNC0( &p, qtrue );
		if ( token[0] == 0 ) {
			break;
		}

		if ( !FUNC1( token, shadername ) ) {
			return p;
		}
		else {
			// skip the definition
			FUNC2( &p, 0 );
		}
	}

	return NULL;
}