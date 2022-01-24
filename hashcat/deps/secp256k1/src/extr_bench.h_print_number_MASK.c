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
 int /*<<< orphan*/  FUNC0 (char*,int,double) ; 

void FUNC1(double x) {
    double y = x;
    int c = 0;
    if (y < 0.0) {
        y = -y;
    }
    while (y > 0 && y < 100.0) {
        y *= 10.0;
        c++;
    }
    FUNC0("%.*f", c, x);
}