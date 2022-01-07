
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__** cipher_suites; TYPE_2__** key_exchanges; } ;
typedef TYPE_1__ ptls_esni_context_t ;
struct TYPE_6__ {int (* on_exchange ) (TYPE_2__**,int,int *,int ) ;} ;


 int free (TYPE_2__**) ;
 int ptls_iovec_init (int *,int ) ;
 int stub1 (TYPE_2__**,int,int *,int ) ;

void ptls_esni_dispose_context(ptls_esni_context_t *esni)
{
    size_t i;

    if (esni->key_exchanges != ((void*)0)) {
        for (i = 0; esni->key_exchanges[i] != ((void*)0); ++i)
            esni->key_exchanges[i]->on_exchange(esni->key_exchanges + i, 1, ((void*)0), ptls_iovec_init(((void*)0), 0));
        free(esni->key_exchanges);
    }
    free(esni->cipher_suites);
}
