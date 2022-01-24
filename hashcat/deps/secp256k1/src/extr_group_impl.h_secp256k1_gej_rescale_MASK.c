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
struct TYPE_3__ {int /*<<< orphan*/  z; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ secp256k1_gej ;
typedef  int /*<<< orphan*/  const secp256k1_fe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC4(secp256k1_gej *r, const secp256k1_fe *s) {
    /* Operations: 4 mul, 1 sqr */
    secp256k1_fe zz;
    FUNC0(!FUNC1(s));
    FUNC3(&zz, s);
    FUNC2(&r->x, &r->x, &zz);                /* r->x *= s^2 */
    FUNC2(&r->y, &r->y, &zz);
    FUNC2(&r->y, &r->y, s);                  /* r->y *= s^3 */
    FUNC2(&r->z, &r->z, s);                  /* r->z *= s   */
}