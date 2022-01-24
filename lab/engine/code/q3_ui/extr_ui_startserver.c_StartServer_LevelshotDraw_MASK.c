#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int x; int y; int id; int flags; scalar_t__ name; } ;
struct TYPE_5__ {int width; int height; void* focusshader; TYPE_1__ generic; void* shader; scalar_t__ focuspic; scalar_t__ errorpic; } ;
typedef  TYPE_2__ menubitmap_s ;
struct TYPE_6__ {int page; int /*<<< orphan*/ * maplist; } ;

/* Variables and functions */
 int ID_PICTURES ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 
 int MAX_MAPSPERPAGE ; 
 int MAX_NAMELENGTH ; 
 int QMF_HIGHLIGHT ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int UI_CENTER ; 
 int /*<<< orphan*/  FUNC3 (int,int,int,int,void*) ; 
 int /*<<< orphan*/  FUNC4 (int,int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int,int,int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int UI_SMALLFONT ; 
 int /*<<< orphan*/  colorBlack ; 
 int /*<<< orphan*/  color_blue ; 
 TYPE_3__ s_startserver ; 
 void* FUNC7 (scalar_t__) ; 

__attribute__((used)) static void FUNC8( void *self ) {
	menubitmap_s	*b;
	int				x;
	int				y;
	int				w;
	int				h;
	int				n;
	const char		*info;
	char			mapname[ MAX_NAMELENGTH ];

	b = (menubitmap_s *)self;

	if( !b->generic.name ) {
		return;
	}

	if( b->generic.name && !b->shader ) {
		b->shader = FUNC7( b->generic.name );
		if( !b->shader && b->errorpic ) {
			b->shader = FUNC7( b->errorpic );
		}
	}

	if( b->focuspic && !b->focusshader ) {
		b->focusshader = FUNC7( b->focuspic );
	}

	x = b->generic.x;
	y = b->generic.y;
	w = b->width;
	h =	b->height;
	if( b->shader ) {
		FUNC3( x, y, w, h, b->shader );
	}

	x = b->generic.x;
	y = b->generic.y + b->height;
	FUNC5( x, y, b->width, 28, colorBlack );

	x += b->width / 2;
	y += 4;
	n = s_startserver.page * MAX_MAPSPERPAGE + b->generic.id - ID_PICTURES;

	info = FUNC6( s_startserver.maplist[ n ]);
	FUNC1( mapname, FUNC0( info, "map"), MAX_NAMELENGTH );
	FUNC2( mapname );
	FUNC4( x, y, mapname, UI_CENTER|UI_SMALLFONT, color_blue );

	x = b->generic.x;
	y = b->generic.y;
	w = b->width;
	h =	b->height + 28;
	if( b->generic.flags & QMF_HIGHLIGHT ) {	
		FUNC3( x, y, w, h, b->focusshader );
	}
}