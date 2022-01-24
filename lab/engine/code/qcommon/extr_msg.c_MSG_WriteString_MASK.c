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
typedef  int /*<<< orphan*/  string ;
typedef  int /*<<< orphan*/  msg_t ;
typedef  int byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int MAX_STRING_CHARS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 int FUNC3 (char const*) ; 

void FUNC4( msg_t *sb, const char *s ) {
	if ( !s ) {
		FUNC1 (sb, "", 1);
	} else {
		int		l,i;
		char	string[MAX_STRING_CHARS];

		l = FUNC3( s );
		if ( l >= MAX_STRING_CHARS ) {
			FUNC0( "MSG_WriteString: MAX_STRING_CHARS" );
			FUNC1 (sb, "", 1);
			return;
		}
		FUNC2( string, s, sizeof( string ) );

		// get rid of 0x80+ and '%' chars, because old clients don't like them
		for ( i = 0 ; i < l ; i++ ) {
			if ( ((byte *)string)[i] > 127 || string[i] == '%' ) {
				string[i] = '.';
			}
		}

		FUNC1 (sb, string, l+1);
	}
}