#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_12__ {int* d; TYPE_1__ member_0; } ;
typedef  TYPE_2__ secp256k1_scalar ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int count ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*,int) ; 
 int FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int) ; 

void FUNC10(void) {
    int i;
    secp256k1_scalar n = {0};

    /* Sanity check: 1 and 2 are the smallest odd and even numbers and should
     *               have easier-to-diagnose failure modes  */
    n.d[0] = 1;
    FUNC5(&n, 4);
    n.d[0] = 2;
    FUNC5(&n, 4);
    /* Test 0 */
    FUNC8();
    /* Random tests */
    for (i = 0; i < count; i++) {
        FUNC1(&n);
        FUNC9(&n, 4+(i%10));
        FUNC6(&n);
        FUNC5(&n, 4 + (i % 10));
        FUNC7(&n, 4 + (i % 10));
    }
    FUNC4(&n, 0);
    FUNC0(FUNC2(&n, 1) == -1);
    FUNC0(FUNC3(&n));
    FUNC0(FUNC2(&n, 0) == 1);
    FUNC0(FUNC3(&n));
}