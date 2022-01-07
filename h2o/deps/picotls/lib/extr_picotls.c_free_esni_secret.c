
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_4__* base; } ;
struct TYPE_9__ {TYPE_1__ pubkey; } ;
struct TYPE_10__ {int len; TYPE_4__* base; } ;
struct TYPE_11__ {TYPE_2__ client; TYPE_3__ secret; } ;
typedef TYPE_4__ ptls_esni_secret_t ;


 int assert (int ) ;
 int free (TYPE_4__*) ;
 int ptls_clear_memory (TYPE_4__*,int) ;

__attribute__((used)) static void free_esni_secret(ptls_esni_secret_t **esni, int is_server)
{
    assert(*esni != ((void*)0));
    if ((*esni)->secret.base != ((void*)0)) {
        ptls_clear_memory((*esni)->secret.base, (*esni)->secret.len);
        free((*esni)->secret.base);
    }
    if (!is_server)
        free((*esni)->client.pubkey.base);
    ptls_clear_memory((*esni), sizeof(**esni));
    free(*esni);
    *esni = ((void*)0);
}
