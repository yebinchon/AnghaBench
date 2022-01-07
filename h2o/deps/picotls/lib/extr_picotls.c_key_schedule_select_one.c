
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int generation; size_t num_hashes; int secret; TYPE_1__* hashes; } ;
typedef TYPE_2__ ptls_key_schedule_t ;
struct TYPE_10__ {scalar_t__ hash; } ;
typedef TYPE_3__ ptls_cipher_suite_t ;
struct TYPE_11__ {int (* final ) (TYPE_4__*,int *,int ) ;} ;
struct TYPE_8__ {scalar_t__ algo; TYPE_4__* ctx; } ;


 int PTLS_HASH_FINAL_MODE_FREE ;
 size_t SIZE_MAX ;
 int assert (int) ;
 int key_schedule_extract (TYPE_2__*,int ) ;
 int memset (int ,int ,int) ;
 int ptls_iovec_init (int *,int ) ;
 int stub1 (TYPE_4__*,int *,int ) ;

__attribute__((used)) static int key_schedule_select_one(ptls_key_schedule_t *sched, ptls_cipher_suite_t *cs, int reset)
{
    size_t found_slot = SIZE_MAX, i;
    int ret;

    assert(sched->generation == 1);


    for (i = 0; i != sched->num_hashes; ++i) {
        if (sched->hashes[i].algo == cs->hash) {
            assert(found_slot == SIZE_MAX);
            found_slot = i;
        } else {
            sched->hashes[i].ctx->final(sched->hashes[i].ctx, ((void*)0), PTLS_HASH_FINAL_MODE_FREE);
        }
    }
    if (found_slot != 0) {
        sched->hashes[0] = sched->hashes[found_slot];
        reset = 1;
    }
    sched->num_hashes = 1;


    if (reset) {
        --sched->generation;
        memset(sched->secret, 0, sizeof(sched->secret));
        if ((ret = key_schedule_extract(sched, ptls_iovec_init(((void*)0), 0))) != 0)
            goto Exit;
    }

    ret = 0;
Exit:
    return ret;
}
