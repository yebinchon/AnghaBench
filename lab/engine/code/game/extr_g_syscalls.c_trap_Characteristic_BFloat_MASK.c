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
struct TYPE_2__ {float f; int /*<<< orphan*/  i; } ;
typedef  TYPE_1__ floatint_t ;

/* Variables and functions */
 int /*<<< orphan*/  BOTLIB_AI_CHARACTERISTIC_BFLOAT ; 
 int /*<<< orphan*/  FUNC0 (float) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

float FUNC2(int character, int index, float min, float max) {
	floatint_t fi;
	fi.i = FUNC1( BOTLIB_AI_CHARACTERISTIC_BFLOAT, character, index, FUNC0(min), FUNC0(max) );
	return fi.f;
}