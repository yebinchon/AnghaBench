
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {TYPE_1__* hashes; int hkdf_label_prefix; } ;
typedef TYPE_2__ ptls_key_schedule_t ;
typedef int ptls_iovec_t ;
struct TYPE_8__ {int digest_size; } ;
struct TYPE_6__ {TYPE_3__* algo; } ;


 int derive_secret (TYPE_2__*,int *,char*) ;
 int hkdf_expand_label (TYPE_3__*,int *,int ,int ,char*,int ,int ) ;
 int ptls_clear_memory (int *,int ) ;
 int ptls_iovec_init (int *,int ) ;

__attribute__((used)) static int derive_resumption_secret(ptls_key_schedule_t *sched, uint8_t *secret, ptls_iovec_t nonce)
{
    int ret;

    if ((ret = derive_secret(sched, secret, "res master")) != 0)
        goto Exit;
    if ((ret = hkdf_expand_label(sched->hashes[0].algo, secret, sched->hashes[0].algo->digest_size,
                                 ptls_iovec_init(secret, sched->hashes[0].algo->digest_size), "resumption", nonce,
                                 sched->hkdf_label_prefix)) != 0)
        goto Exit;

Exit:
    if (ret != 0)
        ptls_clear_memory(secret, sched->hashes[0].algo->digest_size);
    return ret;
}
