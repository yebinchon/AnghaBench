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
struct TYPE_5__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ secp256k1_ge_storage ;
struct TYPE_6__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  infinity; } ;
typedef  TYPE_2__ secp256k1_ge ;
typedef  int /*<<< orphan*/  secp256k1_fe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(secp256k1_ge_storage *r, const secp256k1_ge *a) {
    secp256k1_fe x, y;
    FUNC0(!a->infinity);
    x = a->x;
    FUNC1(&x);
    y = a->y;
    FUNC1(&y);
    FUNC2(&r->x, &x);
    FUNC2(&r->y, &y);
}