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
typedef  int /*<<< orphan*/  picoVec_t ;
typedef  int /*<<< orphan*/ * picoVec4_t ;
typedef  int /*<<< orphan*/  picoVec3_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

picoVec_t FUNC4( picoVec4_t plane, picoVec3_t a, picoVec3_t b, picoVec3_t c ){
	picoVec3_t ba, ca;

	FUNC3( b, a, ba );
	FUNC3( c, a, ca );
	FUNC0( ca, ba, plane );
	plane[ 3 ] = FUNC1( a, plane );
	return FUNC2( plane );
}