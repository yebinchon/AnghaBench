#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ infinity; int /*<<< orphan*/  z; } ;
typedef  TYPE_1__ secp256k1_gej ;
struct TYPE_8__ {int /*<<< orphan*/  x; scalar_t__ infinity; } ;
typedef  TYPE_2__ secp256k1_ge ;
typedef  int /*<<< orphan*/  secp256k1_fe ;

/* Variables and functions */
 size_t SIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__ const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(secp256k1_ge *r, const secp256k1_gej *a, size_t len) {
    secp256k1_fe u;
    size_t i;
    size_t last_i = SIZE_MAX;

    for (i = 0; i < len; i++) {
        if (!a[i].infinity) {
            /* Use destination's x coordinates as scratch space */
            if (last_i == SIZE_MAX) {
                r[i].x = a[i].z;
            } else {
                FUNC2(&r[i].x, &r[last_i].x, &a[i].z);
            }
            last_i = i;
        }
    }
    if (last_i == SIZE_MAX) {
        return;
    }
    FUNC1(&u, &r[last_i].x);

    i = last_i;
    while (i > 0) {
        i--;
        if (!a[i].infinity) {
            FUNC2(&r[last_i].x, &r[i].x, &u);
            FUNC2(&u, &u, &a[last_i].z);
            last_i = i;
        }
    }
    FUNC0(!a[last_i].infinity);
    r[last_i].x = u;

    for (i = 0; i < len; i++) {
        r[i].infinity = a[i].infinity;
        if (!a[i].infinity) {
            FUNC3(&r[i], &a[i], &r[i].x);
        }
    }
}