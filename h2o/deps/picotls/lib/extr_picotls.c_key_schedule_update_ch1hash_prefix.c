
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {TYPE_2__* hashes; } ;
typedef TYPE_3__ ptls_key_schedule_t ;
typedef int prefix ;
struct TYPE_7__ {TYPE_1__* algo; } ;
struct TYPE_6__ {int digest_size; } ;


 int PTLS_HANDSHAKE_TYPE_MESSAGE_HASH ;
 int ptls__key_schedule_update_hash (TYPE_3__*,int *,int) ;

__attribute__((used)) static void key_schedule_update_ch1hash_prefix(ptls_key_schedule_t *sched)
{
    uint8_t prefix[4] = {PTLS_HANDSHAKE_TYPE_MESSAGE_HASH, 0, 0, (uint8_t)sched->hashes[0].algo->digest_size};
    ptls__key_schedule_update_hash(sched, prefix, sizeof(prefix));
}
