#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_10__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ h2o_iovec_t ;
typedef  int /*<<< orphan*/  h2o_cache_t ;
struct TYPE_9__ {int /*<<< orphan*/  len; int /*<<< orphan*/  base; } ;
struct TYPE_11__ {TYPE_1__ value; } ;
typedef  TYPE_3__ h2o_cache_ref_t ;

/* Variables and functions */
 int /*<<< orphan*/  H2O_CACHE_FLAG_EARLY_UPDATE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int bytes_destroyed ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,TYPE_2__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ *,int,TYPE_2__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,TYPE_2__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  on_destroy ; 

void FUNC10(void)
{
    h2o_cache_t *cache = FUNC1(H2O_CACHE_FLAG_EARLY_UPDATE, 1024, 1000, on_destroy);
    uint64_t now = 0;
    h2o_iovec_t key = {FUNC0("key")};
    h2o_cache_ref_t *ref;

    /* fetch "key" */
    ref = FUNC4(cache, now, key, 0);
    FUNC9(ref == NULL);

    /* set "key" => "value" */
    FUNC6(cache, now, key, 0, FUNC7(FUNC0("value")));

    /* delete "key" */
    FUNC2(cache, now, key, 0);
    ref = FUNC4(cache, now, key, 0);
    FUNC9(ref == NULL);

    /* set "key" => "value" */
    FUNC6(cache, now, key, 0, FUNC7(FUNC0("value")));

    /* fetch "key" */
    ref = FUNC4(cache, now, key, 0);
    FUNC9(FUNC8(ref->value.base, ref->value.len, FUNC0("value")));
    FUNC5(cache, ref);

    /* proceed 999ms */
    now += 999;

    /* should fail to fetch "key" */
    ref = FUNC4(cache, now, key, 0);
    FUNC9(ref == NULL);

    /* refetch should succeed */
    ref = FUNC4(cache, now, key, 0);
    FUNC9(FUNC8(ref->value.base, ref->value.len, FUNC0("value")));
    FUNC5(cache, ref);

    /* set "key" to "value2" */
    FUNC6(cache, now, key, 0, FUNC7(FUNC0("value2")));

    /* fetch */
    ref = FUNC4(cache, now, key, 0);
    FUNC9(FUNC8(ref->value.base, ref->value.len, FUNC0("value2")));
    FUNC5(cache, ref);

    FUNC9(bytes_destroyed == 10);

    FUNC3(cache);

    FUNC9(bytes_destroyed == 16);
}