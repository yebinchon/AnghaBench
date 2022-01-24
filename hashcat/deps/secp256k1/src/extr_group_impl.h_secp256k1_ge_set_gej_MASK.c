#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  z; int /*<<< orphan*/  infinity; } ;
typedef  TYPE_1__ secp256k1_gej ;
struct TYPE_6__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  infinity; } ;
typedef  TYPE_2__ secp256k1_ge ;
typedef  int /*<<< orphan*/  secp256k1_fe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(secp256k1_ge *r, secp256k1_gej *a) {
    secp256k1_fe z2, z3;
    r->infinity = a->infinity;
    FUNC0(&a->z, &a->z);
    FUNC3(&z2, &a->z);
    FUNC1(&z3, &a->z, &z2);
    FUNC1(&a->x, &a->x, &z2);
    FUNC1(&a->y, &a->y, &z3);
    FUNC2(&a->z, 1);
    r->x = a->x;
    r->y = a->y;
}