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
typedef  double vec_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (double) ; 
 double FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,double) ; 

void FUNC3( FILE *f, vec_t v ){
	if ( FUNC1( v - FUNC0( v ) ) < 0.001 ) {
		FUNC2( f,"%i ",(int)FUNC0( v ) );
	}
	else{
		FUNC2( f,"%f ",v );
	}
}