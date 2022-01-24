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
typedef  int /*<<< orphan*/  secp256k1_num ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC10(void) {
    secp256k1_num n1;
    secp256k1_num n2;
    FUNC2(&n1); /* n1 = R */
    FUNC1(&n1);
    FUNC4(&n2, &n1); /* n2 = R */
    FUNC9(&n1, &n2, &n1); /* n1 = n2-n1 = 0 */
    FUNC0(FUNC7(&n1));
    FUNC4(&n1, &n2); /* n1 = R */
    FUNC8(&n1); /* n1 = -R */
    FUNC0(!FUNC7(&n1));
    FUNC3(&n1, &n2, &n1); /* n1 = n2+n1 = 0 */
    FUNC0(FUNC7(&n1));
    FUNC4(&n1, &n2); /* n1 = R */
    FUNC8(&n1); /* n1 = -R */
    FUNC0(FUNC6(&n1) != FUNC6(&n2));
    FUNC8(&n1); /* n1 = R */
    FUNC0(FUNC5(&n1, &n2));
}