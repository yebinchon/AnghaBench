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
typedef  scalar_t__ vec_t ;
typedef  scalar_t__* vec3_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 

void FUNC1( vec3_t v ){
	int i;
	for ( i = 0; i < 3; i++ )
	{
		v[i] = (vec_t)FUNC0( v[i] + 0.5 );
	}
}