
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {size_t num_hashes; TYPE_1__* hashes; int secret; } ;
typedef TYPE_2__ ptls_key_schedule_t ;
struct TYPE_8__ {int (* final ) (TYPE_3__*,int *,int ) ;} ;
struct TYPE_6__ {TYPE_3__* ctx; } ;


 int PTLS_HASH_FINAL_MODE_FREE ;
 int free (TYPE_2__*) ;
 int ptls_clear_memory (int ,int) ;
 int stub1 (TYPE_3__*,int *,int ) ;

__attribute__((used)) static void key_schedule_free(ptls_key_schedule_t *sched)
{
    size_t i;
    ptls_clear_memory(sched->secret, sizeof(sched->secret));
    for (i = 0; i != sched->num_hashes; ++i)
        sched->hashes[i].ctx->final(sched->hashes[i].ctx, ((void*)0), PTLS_HASH_FINAL_MODE_FREE);
    free(sched);
}
