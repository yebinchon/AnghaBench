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
typedef  int /*<<< orphan*/  vec3_t ;

/* Variables and functions */
 int NUMVERTEXNORMALS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * bytedirs ; 
 int /*<<< orphan*/  vec3_origin ; 

void FUNC1( int b, vec3_t dir ) {
	if ( b < 0 || b >= NUMVERTEXNORMALS ) {
		FUNC0( vec3_origin, dir );
		return;
	}
	FUNC0 (bytedirs[b], dir);
}