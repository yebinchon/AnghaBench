#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  secp256k1_scratch ;
struct TYPE_2__ {int /*<<< orphan*/  error_callback; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PIPPENGER_MAX_BUCKET_WINDOW ; 
 int PIPPENGER_SCRATCH_OBJECTS ; 
 TYPE_1__* ctx ; 
 int FUNC1 (size_t) ; 
 size_t FUNC2 (int) ; 
 size_t FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC4 (size_t,int) ; 
 size_t FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC11(void) {
    size_t scratch_size = FUNC5(256);
    size_t max_size = FUNC4(FUNC2(PIPPENGER_MAX_BUCKET_WINDOW-1)+512, 12);
    secp256k1_scratch *scratch;
    size_t n_points_supported;
    int bucket_window = 0;

    for(; scratch_size < max_size; scratch_size+=256) {
        size_t i;
        size_t total_alloc;
        size_t checkpoint;
        scratch = FUNC9(&ctx->error_callback, scratch_size);
        FUNC0(scratch != NULL);
        checkpoint = FUNC8(&ctx->error_callback, scratch);
        n_points_supported = FUNC3(&ctx->error_callback, scratch);
        if (n_points_supported == 0) {
            FUNC10(&ctx->error_callback, scratch);
            continue;
        }
        bucket_window = FUNC1(n_points_supported);
        /* allocate `total_alloc` bytes over `PIPPENGER_SCRATCH_OBJECTS` many allocations */
        total_alloc = FUNC4(n_points_supported, bucket_window);
        for (i = 0; i < PIPPENGER_SCRATCH_OBJECTS - 1; i++) {
            FUNC0(FUNC6(&ctx->error_callback, scratch, 1));
            total_alloc--;
        }
        FUNC0(FUNC6(&ctx->error_callback, scratch, total_alloc));
        FUNC7(&ctx->error_callback, scratch, checkpoint);
        FUNC10(&ctx->error_callback, scratch);
    }
    FUNC0(bucket_window == PIPPENGER_MAX_BUCKET_WINDOW);
}