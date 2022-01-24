#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int qboolean ;
struct TYPE_6__ {int x; int y; size_t id; int flags; scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; int /*<<< orphan*/  parent; } ;
struct TYPE_7__ {TYPE_1__ generic; } ;
typedef  TYPE_2__ menuaction_s ;
struct TYPE_9__ {int bind1; int bind2; char* label; } ;
struct TYPE_8__ {scalar_t__ waitingforkey; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int QMF_GRAYED ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 double SCREEN_HEIGHT ; 
 double SCREEN_WIDTH ; 
 int SMALLCHAR_WIDTH ; 
 int UI_BLINK ; 
 int UI_CENTER ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int UI_LEFT ; 
 int UI_PULSE ; 
 int UI_RIGHT ; 
 int UI_SMALLFONT ; 
 int /*<<< orphan*/  colorBlack ; 
 int /*<<< orphan*/  controls_binding_color ; 
 TYPE_4__* g_bindings ; 
 int /*<<< orphan*/  listbar_color ; 
 TYPE_3__ s_controls ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  text_color_disabled ; 
 int /*<<< orphan*/  text_color_highlight ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int) ; 

__attribute__((used)) static void FUNC8( void *self )
{
	menuaction_s*	a;
	int				x;
	int				y;
	int				b1;
	int				b2;
	qboolean		c;
	char			name[32];
	char			name2[32];

	a = (menuaction_s*) self;

	x =	a->generic.x;
	y = a->generic.y;

	c = (FUNC0( a->generic.parent ) == a);

	b1 = g_bindings[a->generic.id].bind1;
	if (b1 == -1)
		FUNC6(name,"???");
	else
	{
		FUNC7( b1, name, 32 );
		FUNC1(name);

		b2 = g_bindings[a->generic.id].bind2;
		if (b2 != -1)
		{
			FUNC7( b2, name2, 32 );
			FUNC1(name2);

			FUNC5( name, " or " );
			FUNC5( name, name2 );
		}
	}

	if (c)
	{
		FUNC4( a->generic.left, a->generic.top, a->generic.right-a->generic.left+1, a->generic.bottom-a->generic.top+1, listbar_color ); 

		FUNC3( x - SMALLCHAR_WIDTH, y, g_bindings[a->generic.id].label, UI_RIGHT|UI_SMALLFONT, text_color_highlight );
		FUNC3( x + SMALLCHAR_WIDTH, y, name, UI_LEFT|UI_SMALLFONT|UI_PULSE, text_color_highlight );

		if (s_controls.waitingforkey)
		{
			FUNC2( x, y, '=', UI_CENTER|UI_BLINK|UI_SMALLFONT, text_color_highlight);
			FUNC3(SCREEN_WIDTH * 0.50, SCREEN_HEIGHT * 0.80, "Waiting for new key ... ESCAPE to cancel", UI_SMALLFONT|UI_CENTER|UI_PULSE, colorBlack );
		}
		else
		{
			FUNC2( x, y, 13, UI_CENTER|UI_BLINK|UI_SMALLFONT, text_color_highlight);
			FUNC3(SCREEN_WIDTH * 0.50, SCREEN_HEIGHT * 0.78, "Press ENTER or CLICK to change", UI_SMALLFONT|UI_CENTER, colorBlack );
			FUNC3(SCREEN_WIDTH * 0.50, SCREEN_HEIGHT * 0.82, "Press BACKSPACE to clear", UI_SMALLFONT|UI_CENTER, colorBlack );
		}
	}
	else
	{
		if (a->generic.flags & QMF_GRAYED)
		{
			FUNC3( x - SMALLCHAR_WIDTH, y, g_bindings[a->generic.id].label, UI_RIGHT|UI_SMALLFONT, text_color_disabled );
			FUNC3( x + SMALLCHAR_WIDTH, y, name, UI_LEFT|UI_SMALLFONT, text_color_disabled );
		}
		else
		{
			FUNC3( x - SMALLCHAR_WIDTH, y, g_bindings[a->generic.id].label, UI_RIGHT|UI_SMALLFONT, controls_binding_color );
			FUNC3( x + SMALLCHAR_WIDTH, y, name, UI_LEFT|UI_SMALLFONT, controls_binding_color );
		}
	}
}