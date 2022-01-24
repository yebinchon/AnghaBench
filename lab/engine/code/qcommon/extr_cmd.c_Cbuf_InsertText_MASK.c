#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int cursize; int maxsize; char* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__ cmd_text ; 
 int FUNC2 (char const*) ; 

void FUNC3( const char *text ) {
	int		len;
	int		i;

	len = FUNC2( text ) + 1;
	if ( len + cmd_text.cursize > cmd_text.maxsize ) {
		FUNC1( "Cbuf_InsertText overflowed\n" );
		return;
	}

	// move the existing command text
	for ( i = cmd_text.cursize - 1 ; i >= 0 ; i-- ) {
		cmd_text.data[ i + len ] = cmd_text.data[ i ];
	}

	// copy the new text in
	FUNC0( cmd_text.data, text, len - 1 );

	// add a \n
	cmd_text.data[ len - 1 ] = '\n';

	cmd_text.cursize += len;
}