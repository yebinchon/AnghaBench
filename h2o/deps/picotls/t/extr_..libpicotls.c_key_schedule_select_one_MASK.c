#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int generation; size_t num_hashes; int /*<<< orphan*/  secret; TYPE_1__* hashes; } ;
typedef  TYPE_2__ ptls_key_schedule_t ;
struct TYPE_10__ {scalar_t__ hash; } ;
typedef  TYPE_3__ ptls_cipher_suite_t ;
struct TYPE_11__ {int /*<<< orphan*/  (* final ) (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
struct TYPE_8__ {scalar_t__ algo; TYPE_4__* ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  PTLS_HASH_FINAL_MODE_FREE ; 
 size_t SIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(ptls_key_schedule_t *sched, ptls_cipher_suite_t *cs, int reset)
{
    size_t found_slot = SIZE_MAX, i;
    int ret;

    FUNC0(sched->generation == 1);

    /* find the one, while freeing others */
    for (i = 0; i != sched->num_hashes; ++i) {
        if (sched->hashes[i].algo == cs->hash) {
            FUNC0(found_slot == SIZE_MAX);
            found_slot = i;
        } else {
            sched->hashes[i].ctx->final(sched->hashes[i].ctx, NULL, PTLS_HASH_FINAL_MODE_FREE);
        }
    }
    if (found_slot != 0) {
        sched->hashes[0] = sched->hashes[found_slot];
        reset = 1;
    }
    sched->num_hashes = 1;

    /* recalculate the hash if a different hash as been selected than the one we used for calculating the early secrets */
    if (reset) {
        --sched->generation;
        FUNC2(sched->secret, 0, sizeof(sched->secret));
        if ((ret = FUNC1(sched, FUNC3(NULL, 0))) != 0)
            goto Exit;
    }

    ret = 0;
Exit:
    return ret;
}