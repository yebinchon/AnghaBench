#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_2__ ;
typedef  struct TYPE_31__   TYPE_1__ ;

/* Type definitions */
struct TYPE_31__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  infinity; int /*<<< orphan*/  z; } ;
typedef  TYPE_1__ secp256k1_gej ;
struct TYPE_32__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  infinity; } ;
typedef  TYPE_2__ secp256k1_ge ;
typedef  int /*<<< orphan*/  secp256k1_fe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__ const*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__ const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_1__ const*,TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_1__ const*,TYPE_2__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_1__ const*,TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,TYPE_1__ const*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int FUNC12 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,TYPE_1__ const*) ; 

void FUNC14(const secp256k1_ge *group, const secp256k1_gej *groupj, int order) {
    int i, j;

    /* Sanity-check (and check infinity functions) */
    FUNC0(FUNC4(&group[0]));
    FUNC0(FUNC12(&groupj[0]));
    for (i = 1; i < order; i++) {
        FUNC0(!FUNC4(&group[i]));
        FUNC0(!FUNC12(&groupj[i]));
    }

    /* Check all addition formulae */
    for (j = 0; j < order; j++) {
        secp256k1_fe fe_inv;
        FUNC3(&fe_inv, &groupj[j].z);
        for (i = 0; i < order; i++) {
            secp256k1_ge zless_gej;
            secp256k1_gej tmp;
            /* add_var */
            FUNC8(&tmp, &groupj[i], &groupj[j], NULL);
            FUNC2(&group[(i + j) % order], &tmp);
            /* add_ge */
            if (j > 0) {
                FUNC6(&tmp, &groupj[i], &group[j]);
                FUNC2(&group[(i + j) % order], &tmp);
            }
            /* add_ge_var */
            FUNC7(&tmp, &groupj[i], &group[j], NULL);
            FUNC2(&group[(i + j) % order], &tmp);
            /* add_zinv_var */
            zless_gej.infinity = groupj[j].infinity;
            zless_gej.x = groupj[j].x;
            zless_gej.y = groupj[j].y;
            FUNC9(&tmp, &groupj[i], &zless_gej, &fe_inv);
            FUNC2(&group[(i + j) % order], &tmp);
        }
    }

    /* Check doubling */
    for (i = 0; i < order; i++) {
        secp256k1_gej tmp;
        if (i > 0) {
            FUNC10(&tmp, &groupj[i], NULL);
            FUNC2(&group[(2 * i) % order], &tmp);
        }
        FUNC11(&tmp, &groupj[i], NULL);
        FUNC2(&group[(2 * i) % order], &tmp);
    }

    /* Check negation */
    for (i = 1; i < order; i++) {
        secp256k1_ge tmp;
        secp256k1_gej tmpj;
        FUNC5(&tmp, &group[i]);
        FUNC1(&group[order - i], &tmp);
        FUNC13(&tmpj, &groupj[i]);
        FUNC2(&group[order - i], &tmpj);
    }
}