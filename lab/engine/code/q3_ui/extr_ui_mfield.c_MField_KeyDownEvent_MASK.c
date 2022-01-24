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
struct TYPE_4__ {int cursor; int scroll; int widthInChars; scalar_t__ buffer; } ;
typedef  TYPE_1__ mfield_t ;

/* Variables and functions */
 int /*<<< orphan*/  K_CTRL ; 
 int K_DEL ; 
 int K_END ; 
 int K_HOME ; 
 int K_INS ; 
 int K_KP_DEL ; 
 int K_KP_END ; 
 int K_KP_HOME ; 
 int K_KP_INS ; 
 int K_KP_LEFTARROW ; 
 int K_KP_RIGHTARROW ; 
 int K_LEFTARROW ; 
 int K_RIGHTARROW ; 
 int /*<<< orphan*/  K_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int) ; 
 int FUNC2 (scalar_t__) ; 
 char FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

void FUNC7( mfield_t *edit, int key ) {
	int		len;

	// shift-insert is paste
	if ( ( ( key == K_INS ) || ( key == K_KP_INS ) ) && FUNC5( K_SHIFT ) ) {
		FUNC0( edit );
		return;
	}

	len = FUNC2( edit->buffer );

	if ( key == K_DEL || key == K_KP_DEL ) {
		if ( edit->cursor < len ) {
			FUNC1( edit->buffer + edit->cursor, 
				edit->buffer + edit->cursor + 1, len - edit->cursor );
		}
		return;
	}

	if ( key == K_RIGHTARROW || key == K_KP_RIGHTARROW ) 
	{
		if ( edit->cursor < len ) {
			edit->cursor++;
		}
		if ( edit->cursor >= edit->scroll + edit->widthInChars && edit->cursor <= len )
		{
			edit->scroll++;
		}
		return;
	}

	if ( key == K_LEFTARROW || key == K_KP_LEFTARROW ) 
	{
		if ( edit->cursor > 0 ) {
			edit->cursor--;
		}
		if ( edit->cursor < edit->scroll )
		{
			edit->scroll--;
		}
		return;
	}

	if ( key == K_HOME || key == K_KP_HOME || ( FUNC3(key) == 'a' && FUNC5( K_CTRL ) ) ) {
		edit->cursor = 0;
		edit->scroll = 0;
		return;
	}

	if ( key == K_END || key == K_KP_END || ( FUNC3(key) == 'e' && FUNC5( K_CTRL ) ) ) {
		edit->cursor = len;
		edit->scroll = len - edit->widthInChars + 1;
		if (edit->scroll < 0)
			edit->scroll = 0;
		return;
	}

	if ( key == K_INS || key == K_KP_INS ) {
		FUNC6( !FUNC4() );
		return;
	}
}