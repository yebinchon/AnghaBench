#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  x; int /*<<< orphan*/  y; scalar_t__ infinity; } ;
typedef  TYPE_1__ secp256k1_ge ;
typedef  int /*<<< orphan*/  secp256k1_fe ;

/* Variables and functions */
 int /*<<< orphan*/  CURVE_B ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(const secp256k1_ge *a) {
    secp256k1_fe y2, x3, c;
    if (a->infinity) {
        return 0;
    }
    /* y^2 = x^3 + 7 */
    FUNC5(&y2, &a->y);
    FUNC5(&x3, &a->x); FUNC2(&x3, &x3, &a->x);
    FUNC4(&c, CURVE_B);
    FUNC0(&x3, &c);
    FUNC3(&x3);
    return FUNC1(&y2, &x3);
}