#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  w128_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_4__ {int initialized; scalar_t__ idx; } ;
typedef  TYPE_1__ sfmt_t ;

/* Variables and functions */
 scalar_t__ N32 ; 
 int N64 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

void FUNC3(sfmt_t *ctx, uint64_t *array, int size) {
    FUNC0(ctx->initialized);
    FUNC0(ctx->idx == N32);
    FUNC0(size % 2 == 0);
    FUNC0(size >= N64);

    FUNC1(ctx, (w128_t *)array, size / 2);
    ctx->idx = N32;

#if defined(BIG_ENDIAN64) && !defined(ONLY64)
    swap((w128_t *)array, size /2);
#endif
}