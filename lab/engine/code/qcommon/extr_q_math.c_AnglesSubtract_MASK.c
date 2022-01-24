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
typedef  int /*<<< orphan*/ * vec3_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1( vec3_t v1, vec3_t v2, vec3_t v3 ) {
	v3[0] = FUNC0( v1[0], v2[0] );
	v3[1] = FUNC0( v1[1], v2[1] );
	v3[2] = FUNC0( v1[2], v2[2] );
}