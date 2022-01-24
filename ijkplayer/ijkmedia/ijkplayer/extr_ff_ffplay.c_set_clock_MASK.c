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
typedef  int /*<<< orphan*/  Clock ;

/* Variables and functions */
 double FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,double,int,double) ; 

__attribute__((used)) static void FUNC2(Clock *c, double pts, int serial)
{
    double time = FUNC0() / 1000000.0;
    FUNC1(c, pts, serial, time);
}