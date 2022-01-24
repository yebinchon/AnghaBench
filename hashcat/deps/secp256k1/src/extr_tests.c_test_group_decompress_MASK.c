#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  secp256k1_gej ;
struct TYPE_5__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  infinity; } ;
typedef  TYPE_1__ secp256k1_ge ;
typedef  int /*<<< orphan*/  secp256k1_fe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_1__*) ; 

void FUNC13(const secp256k1_fe* x) {
    /* The input itself, normalized. */
    secp256k1_fe fex = *x;
    secp256k1_fe fez;
    /* Results of set_xquad_var, set_xo_var(..., 0), set_xo_var(..., 1). */
    secp256k1_ge ge_quad, ge_even, ge_odd;
    secp256k1_gej gej_quad;
    /* Return values of the above calls. */
    int res_quad, res_even, res_odd;

    FUNC6(&fex);

    res_quad = FUNC8(&ge_quad, &fex);
    res_even = FUNC7(&ge_even, &fex, 0);
    res_odd = FUNC7(&ge_odd, &fex, 1);

    FUNC0(res_quad == res_even);
    FUNC0(res_quad == res_odd);

    if (res_quad) {
        FUNC6(&ge_quad.x);
        FUNC6(&ge_odd.x);
        FUNC6(&ge_even.x);
        FUNC6(&ge_quad.y);
        FUNC6(&ge_odd.y);
        FUNC6(&ge_even.y);

        /* No infinity allowed. */
        FUNC0(!ge_quad.infinity);
        FUNC0(!ge_even.infinity);
        FUNC0(!ge_odd.infinity);

        /* Check that the x coordinates check out. */
        FUNC0(FUNC2(&ge_quad.x, x));
        FUNC0(FUNC2(&ge_even.x, x));
        FUNC0(FUNC2(&ge_odd.x, x));

        /* Check that the Y coordinate result in ge_quad is a square. */
        FUNC0(FUNC4(&ge_quad.y));

        /* Check odd/even Y in ge_odd, ge_even. */
        FUNC0(FUNC3(&ge_odd.y));
        FUNC0(!FUNC3(&ge_even.y));

        /* Check secp256k1_gej_has_quad_y_var. */
        FUNC12(&gej_quad, &ge_quad);
        FUNC0(FUNC9(&gej_quad));
        do {
            FUNC1(&fez);
        } while (FUNC5(&fez));
        FUNC11(&gej_quad, &fez);
        FUNC0(FUNC9(&gej_quad));
        FUNC10(&gej_quad, &gej_quad);
        FUNC0(!FUNC9(&gej_quad));
        do {
            FUNC1(&fez);
        } while (FUNC5(&fez));
        FUNC11(&gej_quad, &fez);
        FUNC0(!FUNC9(&gej_quad));
        FUNC10(&gej_quad, &gej_quad);
        FUNC0(FUNC9(&gej_quad));
    }
}