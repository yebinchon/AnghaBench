#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t ECMULT_MAX_POINTS_PER_BATCH ; 
 size_t SIZE_MAX ; 
 int FUNC1 (size_t*,size_t*,size_t,size_t) ; 

void FUNC2(void) {
    size_t n_batches, n_batch_points, max_n_batch_points, n;

    max_n_batch_points = 0;
    n = 1;
    FUNC0(FUNC1(&n_batches, &n_batch_points, max_n_batch_points, n) == 0);

    max_n_batch_points = 1;
    n = 0;
    FUNC0(FUNC1(&n_batches, &n_batch_points, max_n_batch_points, n) == 1);
    FUNC0(n_batches == 0);
    FUNC0(n_batch_points == 0);

    max_n_batch_points = 2;
    n = 5;
    FUNC0(FUNC1(&n_batches, &n_batch_points, max_n_batch_points, n) == 1);
    FUNC0(n_batches == 3);
    FUNC0(n_batch_points == 2);

    max_n_batch_points = ECMULT_MAX_POINTS_PER_BATCH;
    n = ECMULT_MAX_POINTS_PER_BATCH;
    FUNC0(FUNC1(&n_batches, &n_batch_points, max_n_batch_points, n) == 1);
    FUNC0(n_batches == 1);
    FUNC0(n_batch_points == ECMULT_MAX_POINTS_PER_BATCH);

    max_n_batch_points = ECMULT_MAX_POINTS_PER_BATCH + 1;
    n = ECMULT_MAX_POINTS_PER_BATCH + 1;
    FUNC0(FUNC1(&n_batches, &n_batch_points, max_n_batch_points, n) == 1);
    FUNC0(n_batches == 2);
    FUNC0(n_batch_points == ECMULT_MAX_POINTS_PER_BATCH/2 + 1);

    max_n_batch_points = 1;
    n = SIZE_MAX;
    FUNC0(FUNC1(&n_batches, &n_batch_points, max_n_batch_points, n) == 1);
    FUNC0(n_batches == SIZE_MAX);
    FUNC0(n_batch_points == 1);

    max_n_batch_points = 2;
    n = SIZE_MAX;
    FUNC0(FUNC1(&n_batches, &n_batch_points, max_n_batch_points, n) == 1);
    FUNC0(n_batches == SIZE_MAX/2 + 1);
    FUNC0(n_batch_points == 2);
}