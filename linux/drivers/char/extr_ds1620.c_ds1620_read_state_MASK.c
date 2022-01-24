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
struct therm {void* hi; void* lo; } ;

/* Variables and functions */
 int /*<<< orphan*/  THERM_READ_TH ; 
 int /*<<< orphan*/  THERM_READ_TL ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct therm *therm)
{
	therm->lo = FUNC0(FUNC1(THERM_READ_TL, 9));
	therm->hi = FUNC0(FUNC1(THERM_READ_TH, 9));
}