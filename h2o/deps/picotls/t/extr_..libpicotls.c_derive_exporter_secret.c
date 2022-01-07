
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {int * one_rtt; int * early; } ;
struct TYPE_13__ {TYPE_7__* key_schedule; TYPE_1__ exporter_master_secret; TYPE_4__* ctx; } ;
typedef TYPE_5__ ptls_t ;
struct TYPE_14__ {TYPE_3__* hashes; } ;
struct TYPE_12__ {int use_exporter; } ;
struct TYPE_11__ {TYPE_2__* algo; } ;
struct TYPE_10__ {int digest_size; } ;


 int PTLS_ERROR_NO_MEMORY ;
 int assert (int ) ;
 int derive_secret (TYPE_7__*,int *,char*) ;
 int log_secret (TYPE_5__*,char*,int ) ;
 int * malloc (int ) ;
 int ptls_iovec_init (int *,int ) ;

__attribute__((used)) static int derive_exporter_secret(ptls_t *tls, int is_early)
{
    int ret;

    if (!tls->ctx->use_exporter)
        return 0;

    uint8_t **slot = is_early ? &tls->exporter_master_secret.early : &tls->exporter_master_secret.one_rtt;
    assert(*slot == ((void*)0));
    if ((*slot = malloc(tls->key_schedule->hashes[0].algo->digest_size)) == ((void*)0))
        return PTLS_ERROR_NO_MEMORY;

    if ((ret = derive_secret(tls->key_schedule, *slot, is_early ? "e exp master" : "exp master")) != 0)
        return ret;

    log_secret(tls, is_early ? "EARLY_EXPORTER_SECRET" : "EXPORTER_SECRET",
               ptls_iovec_init(*slot, tls->key_schedule->hashes[0].algo->digest_size));

    return 0;
}
