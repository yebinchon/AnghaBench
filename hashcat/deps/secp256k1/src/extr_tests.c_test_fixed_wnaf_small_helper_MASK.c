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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 

void FUNC2(int *wnaf, int *wnaf_expected, int w) {
    int i;
    for (i = FUNC1(w)-1; i >= 8; --i) {
        FUNC0(wnaf[i] == 0);
    }
    for (i = 7; i >= 0; --i) {
        FUNC0(wnaf[i] == wnaf_expected[i]);
    }
}