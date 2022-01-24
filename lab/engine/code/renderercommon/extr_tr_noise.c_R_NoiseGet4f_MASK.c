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

/* Variables and functions */
 float FUNC0 (int,int,int,int) ; 
 float FUNC1 (float,float,float) ; 
 scalar_t__ FUNC2 (double) ; 

float FUNC3( float x, float y, float z, double t )
{
	int i;
	int ix, iy, iz, it;
	float fx, fy, fz, ft;
	float front[4];
	float back[4];
	float fvalue, bvalue, value[2], finalvalue;

	ix = ( int ) FUNC2( x );
	fx = x - ix;
	iy = ( int ) FUNC2( y );
	fy = y - iy;
	iz = ( int ) FUNC2( z );
	fz = z - iz;
	it = ( int ) FUNC2( t );
	ft = t - it;

	for ( i = 0; i < 2; i++ )
	{
		front[0] = FUNC0( ix, iy, iz, it + i );
		front[1] = FUNC0( ix+1, iy, iz, it + i );
		front[2] = FUNC0( ix, iy+1, iz, it + i );
		front[3] = FUNC0( ix+1, iy+1, iz, it + i );

		back[0] = FUNC0( ix, iy, iz + 1, it + i );
		back[1] = FUNC0( ix+1, iy, iz + 1, it + i );
		back[2] = FUNC0( ix, iy+1, iz + 1, it + i );
		back[3] = FUNC0( ix+1, iy+1, iz + 1, it + i );

		fvalue = FUNC1( FUNC1( front[0], front[1], fx ), FUNC1( front[2], front[3], fx ), fy );
		bvalue = FUNC1( FUNC1( back[0], back[1], fx ), FUNC1( back[2], back[3], fx ), fy );

		value[i] = FUNC1( fvalue, bvalue, fz );
	}

	finalvalue = FUNC1( value[0], value[1], ft );

	return finalvalue;
}