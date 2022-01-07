
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {TYPE_1__* hashes; } ;
typedef TYPE_2__ ptls_key_schedule_t ;
struct TYPE_7__ {int (* final ) (TYPE_3__*,int *,int ) ;} ;
struct TYPE_5__ {TYPE_3__* ctx; } ;


 int PTLS_HASH_FINAL_MODE_RESET ;
 int stub1 (TYPE_3__*,int *,int ) ;

__attribute__((used)) static void key_schedule_extract_ch1hash(ptls_key_schedule_t *sched, uint8_t *hash)
{
    sched->hashes[0].ctx->final(sched->hashes[0].ctx, hash, PTLS_HASH_FINAL_MODE_RESET);
}
