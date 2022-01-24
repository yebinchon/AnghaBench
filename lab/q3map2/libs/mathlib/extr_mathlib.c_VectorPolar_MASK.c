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
typedef  float* vec3_t ;

/* Variables and functions */
 float FUNC0 (float) ; 
 float FUNC1 (float) ; 

void FUNC2( vec3_t v, float radius, float theta, float phi ){
	v[0] = (float)( radius * FUNC0( theta ) * FUNC0( phi ) );
	v[1] = (float)( radius * FUNC1( theta ) * FUNC0( phi ) );
	v[2] = (float)( radius * FUNC1( phi ) );
}