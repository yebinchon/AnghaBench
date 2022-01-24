#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  z; scalar_t__ infinity; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ secp256k1_gej ;
struct TYPE_13__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; scalar_t__ infinity; } ;
typedef  TYPE_2__ secp256k1_ge ;
typedef  int /*<<< orphan*/  secp256k1_fe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_1__ const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(int n, secp256k1_gej *prej, secp256k1_fe *zr, const secp256k1_gej *a) {
    secp256k1_gej d;
    secp256k1_ge a_ge, d_ge;
    int i;

    FUNC0(!a->infinity);

    FUNC4(&d, a, NULL);

    /*
     * Perform the additions on an isomorphism where 'd' is affine: drop the z coordinate
     * of 'd', and scale the 1P starting value's x/y coordinates without changing its z.
     */
    d_ge.x = d.x;
    d_ge.y = d.y;
    d_ge.infinity = 0;

    FUNC2(&a_ge, a, &d.z);
    prej[0].x = a_ge.x;
    prej[0].y = a_ge.y;
    prej[0].z = a->z;
    prej[0].infinity = 0;

    zr[0] = d.z;
    for (i = 1; i < n; i++) {
        FUNC3(&prej[i], &prej[i-1], &d_ge, &zr[i]);
    }

    /*
     * Each point in 'prej' has a z coordinate too small by a factor of 'd.z'. Only
     * the final point's z coordinate is actually used though, so just update that.
     */
    FUNC1(&prej[n-1].z, &prej[n-1].z, &d.z);
}