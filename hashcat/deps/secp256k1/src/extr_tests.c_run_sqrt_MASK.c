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
 int count ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC7(void) {
    secp256k1_fe ns, x, s, t;
    int i;

    /* Check sqrt(0) is 0 */
    FUNC4(&x, 0);
    FUNC5(&s, &x);
    FUNC6(&s, &x);

    /* Check sqrt of small squares (and their negatives) */
    for (i = 1; i <= 100; i++) {
        FUNC4(&x, i);
        FUNC5(&s, &x);
        FUNC6(&s, &x);
        FUNC3(&t, &s, 1);
        FUNC6(&t, NULL);
    }

    /* Consistency checks for large random values */
    for (i = 0; i < 10; i++) {
        int j;
        FUNC1(&ns);
        for (j = 0; j < count; j++) {
            FUNC0(&x);
            FUNC5(&s, &x);
            FUNC6(&s, &x);
            FUNC3(&t, &s, 1);
            FUNC6(&t, NULL);
            FUNC2(&t, &s, &ns);
            FUNC6(&t, NULL);
        }
    }
}