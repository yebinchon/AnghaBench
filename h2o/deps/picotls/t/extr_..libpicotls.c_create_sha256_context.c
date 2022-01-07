
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ptls_hash_context_t ;
struct TYPE_6__ {TYPE_3__** cipher_suites; } ;
typedef TYPE_2__ ptls_context_t ;
struct TYPE_7__ {int id; TYPE_1__* hash; } ;
typedef TYPE_3__ ptls_cipher_suite_t ;
struct TYPE_5__ {int * (* create ) () ;} ;




 int * stub1 () ;

__attribute__((used)) static ptls_hash_context_t *create_sha256_context(ptls_context_t *ctx)
{
    ptls_cipher_suite_t **cs;

    for (cs = ctx->cipher_suites; *cs != ((void*)0); ++cs) {
        switch ((*cs)->id) {
        case 129:
        case 128:
            return (*cs)->hash->create();
        }
    }

    return ((void*)0);
}
