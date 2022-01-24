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
typedef  float* vec4_t ;
typedef  int /*<<< orphan*/  qboolean ;
typedef  int /*<<< orphan*/  color ;
struct TYPE_2__ {int /*<<< orphan*/  (* SetColor ) (float*) ;} ;

/* Variables and functions */
 size_t FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (float*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int,int,float,char const) ; 
 int /*<<< orphan*/ * g_color_table ; 
 TYPE_1__ re ; 
 int /*<<< orphan*/  FUNC4 (float*) ; 
 int /*<<< orphan*/  FUNC5 (float*) ; 
 int /*<<< orphan*/  FUNC6 (float*) ; 
 int /*<<< orphan*/  FUNC7 (float*) ; 

void FUNC8( int x, int y, float size, const char *string, float *setColor, qboolean forceColor,
		qboolean noColorEscape ) {
	vec4_t		color;
	const char	*s;
	int			xx;

	// draw the drop shadow
	color[0] = color[1] = color[2] = 0;
	color[3] = setColor[3];
	re.SetColor( color );
	s = string;
	xx = x;
	while ( *s ) {
		if ( !noColorEscape && FUNC2( s ) ) {
			s += 2;
			continue;
		}
		FUNC3( xx+2, y+2, size, *s );
		xx += size;
		s++;
	}


	// draw the colored text
	s = string;
	xx = x;
	re.SetColor( setColor );
	while ( *s ) {
		if ( FUNC2( s ) ) {
			if ( !forceColor ) {
				FUNC1( color, g_color_table[FUNC0(*(s+1))], sizeof( color ) );
				color[3] = setColor[3];
				re.SetColor( color );
			}
			if ( !noColorEscape ) {
				s += 2;
				continue;
			}
		}
		FUNC3( xx, y, size, *s );
		xx += size;
		s++;
	}
	re.SetColor( NULL );
}