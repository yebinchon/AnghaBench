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
typedef  int /*<<< orphan*/  secp256k1_fe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int count ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int FUNC5 (int) ; 

void FUNC6(void) {
    secp256k1_fe x[16], xi[16], xii[16];
    int i;
    /* Check it's safe to call for 0 elements */
    FUNC4(xi, x, 0);
    for (i = 0; i < count; i++) {
        size_t j;
        size_t len = FUNC5(15) + 1;
        for (j = 0; j < len; j++) {
            FUNC3(&x[j]);
        }
        FUNC4(xi, x, len);
        for (j = 0; j < len; j++) {
            FUNC0(FUNC2(&x[j], &xi[j]));
        }
        FUNC4(xii, xi, len);
        for (j = 0; j < len; j++) {
            FUNC0(FUNC1(&x[j], &xii[j]));
        }
    }
}