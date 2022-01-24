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
typedef  int /*<<< orphan*/ * vec4_t ;
typedef  int /*<<< orphan*/  tempcolor ;
struct TYPE_2__ {int xscale; int bias; int yscale; int /*<<< orphan*/  charset; } ;

/* Variables and functions */
 size_t FUNC0 (char const) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/ * g_color_table ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int qfalse ; 
 int /*<<< orphan*/  FUNC3 (float,float,float,float,float,float,float,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__ uis ; 

__attribute__((used)) static void FUNC5( int x, int y, const char* str, vec4_t color, int charw, int charh )
{
	const char* s;
	char	ch;
	int forceColor = qfalse; //APSFIXME;
	vec4_t	tempcolor;
	float	ax;
	float	ay;
	float	aw;
	float	ah;
	float	frow;
	float	fcol;

	if (y < -charh)
		// offscreen
		return;

	// draw the colored text
	FUNC4( color );
	
	ax = x * uis.xscale + uis.bias;
	ay = y * uis.yscale;
	aw = charw * uis.xscale;
	ah = charh * uis.yscale;

	s = str;
	while ( *s )
	{
		if ( FUNC1( s ) )
		{
			if ( !forceColor )
			{
				FUNC2( tempcolor, g_color_table[FUNC0(s[1])], sizeof( tempcolor ) );
				tempcolor[3] = color[3];
				FUNC4( tempcolor );
			}
			s += 2;
			continue;
		}

		ch = *s & 255;
		if (ch != ' ')
		{
			frow = (ch>>4)*0.0625;
			fcol = (ch&15)*0.0625;
			FUNC3( ax, ay, aw, ah, fcol, frow, fcol + 0.0625, frow + 0.0625, uis.charset );
		}

		ax += aw;
		s++;
	}

	FUNC4( NULL );
}