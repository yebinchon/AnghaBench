#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sfxHandle_t ;
struct TYPE_4__ {int flags; } ;
struct TYPE_5__ {int /*<<< orphan*/  field; TYPE_1__ generic; } ;
typedef  TYPE_2__ menufield_s ;

/* Variables and functions */
 int K_CHAR_FLAG ; 
#define  K_DOWNARROW 138 
#define  K_ENTER 137 
#define  K_JOY1 136 
#define  K_JOY2 135 
#define  K_JOY3 134 
#define  K_JOY4 133 
#define  K_KP_DOWNARROW 132 
#define  K_KP_ENTER 131 
#define  K_KP_UPARROW 130 
#define  K_TAB 129 
#define  K_UPARROW 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int QMF_LOWERCASE ; 
 int QMF_NUMBERSONLY ; 
 int QMF_UPPERCASE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  menu_buzz_sound ; 

sfxHandle_t FUNC5( menufield_s* m, int* key )
{
	int keycode;

	keycode = *key;

	switch ( keycode )
	{
		case K_KP_ENTER:
		case K_ENTER:
		case K_JOY1:
		case K_JOY2:
		case K_JOY3:
		case K_JOY4:
			// have enter go to next cursor point
			*key = K_TAB;
			break;

		case K_TAB:
		case K_KP_DOWNARROW:
		case K_DOWNARROW:
		case K_KP_UPARROW:
		case K_UPARROW:
			break;

		default:
			if ( keycode & K_CHAR_FLAG )
			{
				keycode &= ~K_CHAR_FLAG;

				if ((m->generic.flags & QMF_UPPERCASE) && FUNC3( keycode ))
					keycode -= 'a' - 'A';
				else if ((m->generic.flags & QMF_LOWERCASE) && FUNC4( keycode ))
					keycode -= 'A' - 'a';
				else if ((m->generic.flags & QMF_NUMBERSONLY) && FUNC2( keycode ))
					return (menu_buzz_sound);

				FUNC0( &m->field, keycode);
			}
			else
				FUNC1( &m->field, keycode );
			break;
	}

	return (0);
}