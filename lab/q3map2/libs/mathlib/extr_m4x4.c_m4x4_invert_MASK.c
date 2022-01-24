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
typedef  int* m4x4_t ;
typedef  int /*<<< orphan*/  m3x3_t ;

/* Variables and functions */
 double FUNC0 (float) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 float FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int) ; 

int FUNC5( m4x4_t matrix ){
	float mdet = FUNC2( matrix );
	m3x3_t mtemp;
	int i, j, sign;
	m4x4_t m4x4_temp;

	if ( FUNC0( mdet ) < 0.0000000001 ) { //% 0.0005
		return 1;
	}

	FUNC4( m4x4_temp, matrix, sizeof( m4x4_t ) );

	for ( i = 0; i < 4; i++ )
		for ( j = 0; j < 4; j++ )
		{
			sign = 1 - ( ( i + j ) % 2 ) * 2;

			FUNC3( m4x4_temp, mtemp, i, j );

			matrix[i + j * 4] = ( FUNC1( mtemp ) * sign ) / mdet;
		}

	return 0;
}