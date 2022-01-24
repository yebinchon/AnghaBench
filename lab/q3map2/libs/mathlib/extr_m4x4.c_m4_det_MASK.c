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
typedef  float* m4x4_t ;
typedef  int /*<<< orphan*/  m3x3_t ;

/* Variables and functions */
 float FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (float*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

float FUNC2( m4x4_t mr ){
	float det, result = 0, i = 1;
	m3x3_t msub3;
	int n;

	for ( n = 0; n < 4; n++, i *= -1 )
	{
		FUNC1( mr, msub3, 0, n );

		det     = FUNC0( msub3 );
		result += mr[n] * det * i;
	}

	return result;
}