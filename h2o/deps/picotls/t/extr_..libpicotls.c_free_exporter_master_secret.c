
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int * one_rtt; int * early; } ;
struct TYPE_11__ {TYPE_4__* key_schedule; TYPE_1__ exporter_master_secret; } ;
typedef TYPE_5__ ptls_t ;
struct TYPE_10__ {TYPE_3__* hashes; } ;
struct TYPE_9__ {TYPE_2__* algo; } ;
struct TYPE_8__ {int digest_size; } ;


 int assert (int ) ;
 int free (int *) ;
 int ptls_clear_memory (int *,int ) ;

__attribute__((used)) static void free_exporter_master_secret(ptls_t *tls, int is_early)
{
    uint8_t *slot = is_early ? tls->exporter_master_secret.early : tls->exporter_master_secret.one_rtt;
    if (slot == ((void*)0))
        return;
    assert(tls->key_schedule != ((void*)0));
    ptls_clear_memory(slot, tls->key_schedule->hashes[0].algo->digest_size);
    free(slot);
}
