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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,double) ; 

int FUNC1(void) {
    double a = 0.12;
    double b = 16.0;
    FUNC0("%.2f\n", a + b);
    FUNC0("%.2f\n", a - b);
    FUNC0("%.2f\n", a * b);
    FUNC0("%.2f\n", a / b);
    FUNC0("%.2f\n", b / a);
    FUNC0("%.2f\n", a + a / b + b);
    FUNC0("%.2f\n", (a + a) / (b + b));
    return 0;
}