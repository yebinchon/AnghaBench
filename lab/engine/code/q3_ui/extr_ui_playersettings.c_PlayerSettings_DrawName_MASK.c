#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int qboolean ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_7__ {char* buffer; int cursor; } ;
struct TYPE_6__ {int x; int y; scalar_t__ menuPosition; TYPE_1__* parent; } ;
struct TYPE_8__ {TYPE_3__ field; TYPE_2__ generic; } ;
typedef  TYPE_4__ menufield_s ;
struct TYPE_5__ {scalar_t__ cursor; } ;

/* Variables and functions */
 char COLOR_BLACK ; 
 size_t FUNC0 (char) ; 
 scalar_t__ PROP_HEIGHT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int SMALLCHAR_WIDTH ; 
 int UI_BIGFONT ; 
 int UI_BLINK ; 
 int UI_CENTER ; 
 int /*<<< orphan*/  FUNC4 (int,int,char,int,float*) ; 
 int /*<<< orphan*/  FUNC5 (int,int,char*,int,float*) ; 
 int UI_LEFT ; 
 int UI_PULSE ; 
 int UI_SMALLFONT ; 
 float* color_blue ; 
 float** g_color_table ; 
 float* text_color_highlight ; 
 float* text_color_normal ; 
 scalar_t__ FUNC6 () ; 

__attribute__((used)) static void FUNC7( void *self ) {
	menufield_s		*f;
	qboolean		focus;
	int				style;
	char			*txt;
	char			c;
	float			*color;
	int				n;
	int				basex, x, y;
	char			name[32];

	f = (menufield_s*)self;
	basex = f->generic.x;
	y = f->generic.y;
	focus = (f->generic.parent->cursor == f->generic.menuPosition);

	style = UI_LEFT|UI_SMALLFONT;
	color = text_color_normal;
	if( focus ) {
		style |= UI_PULSE;
		color = text_color_highlight;
	}

	FUNC5( basex, y, "Name", style, color );

	// draw the actual name
	basex += 64;
	y += PROP_HEIGHT;
	txt = f->field.buffer;
	color = g_color_table[FUNC0(COLOR_BLACK)];
	x = basex;
	while ( (c = *txt) != 0 ) {
		if ( !focus && FUNC2( txt ) ) {
			n = FUNC0( *(txt+1) );
			if( n == 0 ) {
				n = 7;
			}
			color = g_color_table[n];
			txt += 2;
			continue;
		}
		FUNC4( x, y, c, style, color );
		txt++;
		x += SMALLCHAR_WIDTH;
	}

	// draw cursor if we have focus
	if( focus ) {
		if ( FUNC6() ) {
			c = 11;
		} else {
			c = 10;
		}

		style &= ~UI_PULSE;
		style |= UI_BLINK;

		FUNC4( basex + f->field.cursor * SMALLCHAR_WIDTH, y, c, style, color_blue );
	}

	// draw at bottom also using proportional font
	FUNC3( name, f->field.buffer, sizeof(name) );
	FUNC1( name );
	FUNC5( 320, 440, name, UI_CENTER|UI_BIGFONT, text_color_normal );
}