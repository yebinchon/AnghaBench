
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {TYPE_1__* hashes; } ;
typedef TYPE_2__ ptls_key_schedule_t ;
typedef int hash_value ;
struct TYPE_8__ {int (* final ) (TYPE_3__*,int *,int ) ;} ;
struct TYPE_6__ {TYPE_3__* ctx; } ;


 int PTLS_HASH_FINAL_MODE_SNAPSHOT ;
 int PTLS_MAX_DIGEST_SIZE ;
 int derive_secret_with_hash (TYPE_2__*,void*,char const*,int *) ;
 int ptls_clear_memory (int *,int) ;
 int stub1 (TYPE_3__*,int *,int ) ;

__attribute__((used)) static int derive_secret(ptls_key_schedule_t *sched, void *secret, const char *label)
{
    uint8_t hash_value[PTLS_MAX_DIGEST_SIZE];

    sched->hashes[0].ctx->final(sched->hashes[0].ctx, hash_value, PTLS_HASH_FINAL_MODE_SNAPSHOT);
    int ret = derive_secret_with_hash(sched, secret, label, hash_value);
    ptls_clear_memory(hash_value, sizeof(hash_value));
    return ret;
}
