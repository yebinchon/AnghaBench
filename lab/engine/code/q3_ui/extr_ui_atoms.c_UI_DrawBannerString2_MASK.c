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
struct TYPE_2__ {int xscale; int bias; int yscale; int /*<<< orphan*/  charsetPropB; } ;

/* Variables and functions */
 scalar_t__ PROPB_GAP_WIDTH ; 
 scalar_t__ PROPB_HEIGHT ; 
 scalar_t__ PROPB_SPACE_WIDTH ; 
 scalar_t__** propMapB ; 
 int /*<<< orphan*/  FUNC0 (float,float,float,float,float,float,float,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__ uis ; 

__attribute__((used)) static void FUNC2( int x, int y, const char* str, vec4_t color )
{
	const char* s;
	unsigned char	ch;
	float	ax;
	float	ay;
	float	aw;
	float	ah;
	float	frow;
	float	fcol;
	float	fwidth;
	float	fheight;

	// draw the colored text
	FUNC1( color );
	
	ax = x * uis.xscale + uis.bias;
	ay = y * uis.yscale;

	s = str;
	while ( *s )
	{
		ch = *s & 127;
		if ( ch == ' ' ) {
			ax += ((float)PROPB_SPACE_WIDTH + (float)PROPB_GAP_WIDTH)* uis.xscale;
		}
		else if ( ch >= 'A' && ch <= 'Z' ) {
			ch -= 'A';
			fcol = (float)propMapB[ch][0] / 256.0f;
			frow = (float)propMapB[ch][1] / 256.0f;
			fwidth = (float)propMapB[ch][2] / 256.0f;
			fheight = (float)PROPB_HEIGHT / 256.0f;
			aw = (float)propMapB[ch][2] * uis.xscale;
			ah = (float)PROPB_HEIGHT * uis.yscale;
			FUNC0( ax, ay, aw, ah, fcol, frow, fcol+fwidth, frow+fheight, uis.charsetPropB );
			ax += (aw + (float)PROPB_GAP_WIDTH * uis.xscale);
		}
		s++;
	}

	FUNC1( NULL );
}