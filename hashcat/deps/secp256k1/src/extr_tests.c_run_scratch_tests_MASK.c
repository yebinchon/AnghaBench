#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int alloc_size; } ;
typedef  TYPE_1__ secp256k1_scratch_space ;
struct TYPE_17__ {int /*<<< orphan*/  error_callback; } ;
typedef  TYPE_2__ secp256k1_context ;
typedef  int /*<<< orphan*/  local_scratch ;
typedef  int int32_t ;

/* Variables and functions */
 int ALIGNMENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SECP256K1_CONTEXT_NONE ; 
 int /*<<< orphan*/  counting_illegal_callback_fn ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,size_t) ; 
 size_t FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC9 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 TYPE_1__* FUNC10 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,TYPE_1__*) ; 

void FUNC12(void) {
    const size_t adj_alloc = ((500 + ALIGNMENT - 1) / ALIGNMENT) * ALIGNMENT;

    int32_t ecount = 0;
    size_t checkpoint;
    size_t checkpoint_2;
    secp256k1_context *none = FUNC2(SECP256K1_CONTEXT_NONE);
    secp256k1_scratch_space *scratch;
    secp256k1_scratch_space local_scratch;

    /* Test public API */
    FUNC5(none, counting_illegal_callback_fn, &ecount);
    FUNC4(none, counting_illegal_callback_fn, &ecount);

    scratch = FUNC10(none, 1000);
    FUNC0(scratch != NULL);
    FUNC0(ecount == 0);

    /* Test internal API */
    FUNC0(FUNC9(&none->error_callback, scratch, 0) == 1000);
    FUNC0(FUNC9(&none->error_callback, scratch, 1) == 1000 - (ALIGNMENT - 1));
    FUNC0(scratch->alloc_size == 0);
    FUNC0(scratch->alloc_size % ALIGNMENT == 0);

    /* Allocating 500 bytes succeeds */
    checkpoint = FUNC8(&none->error_callback, scratch);
    FUNC0(FUNC6(&none->error_callback, scratch, 500) != NULL);
    FUNC0(FUNC9(&none->error_callback, scratch, 0) == 1000 - adj_alloc);
    FUNC0(FUNC9(&none->error_callback, scratch, 1) == 1000 - adj_alloc - (ALIGNMENT - 1));
    FUNC0(scratch->alloc_size != 0);
    FUNC0(scratch->alloc_size % ALIGNMENT == 0);

    /* Allocating another 500 bytes fails */
    FUNC0(FUNC6(&none->error_callback, scratch, 500) == NULL);
    FUNC0(FUNC9(&none->error_callback, scratch, 0) == 1000 - adj_alloc);
    FUNC0(FUNC9(&none->error_callback, scratch, 1) == 1000 - adj_alloc - (ALIGNMENT - 1));
    FUNC0(scratch->alloc_size != 0);
    FUNC0(scratch->alloc_size % ALIGNMENT == 0);

    /* ...but it succeeds once we apply the checkpoint to undo it */
    FUNC7(&none->error_callback, scratch, checkpoint);
    FUNC0(scratch->alloc_size == 0);
    FUNC0(FUNC9(&none->error_callback, scratch, 0) == 1000);
    FUNC0(FUNC6(&none->error_callback, scratch, 500) != NULL);
    FUNC0(scratch->alloc_size != 0);

    /* try to apply a bad checkpoint */
    checkpoint_2 = FUNC8(&none->error_callback, scratch);
    FUNC7(&none->error_callback, scratch, checkpoint);
    FUNC0(ecount == 0);
    FUNC7(&none->error_callback, scratch, checkpoint_2); /* checkpoint_2 is after checkpoint */
    FUNC0(ecount == 1);
    FUNC7(&none->error_callback, scratch, (size_t) -1); /* this is just wildly invalid */
    FUNC0(ecount == 2);

    /* try to use badly initialized scratch space */
    FUNC11(none, scratch);
    FUNC1(&local_scratch, 0, sizeof(local_scratch));
    scratch = &local_scratch;
    FUNC0(!FUNC9(&none->error_callback, scratch, 0));
    FUNC0(ecount == 3);
    FUNC0(FUNC6(&none->error_callback, scratch, 500) == NULL);
    FUNC0(ecount == 4);
    FUNC11(none, scratch);
    FUNC0(ecount == 5);

    /* cleanup */
    FUNC11(none, NULL); /* no-op */
    FUNC3(none);
}