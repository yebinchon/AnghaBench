
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_5__ {TYPE_2__** cipher_suites; } ;
typedef TYPE_1__ ptls_context_t ;
struct TYPE_6__ {scalar_t__ id; } ;
typedef TYPE_2__ ptls_cipher_suite_t ;



__attribute__((used)) static ptls_cipher_suite_t *find_cipher_suite(ptls_context_t *ctx, uint16_t id)
{
    ptls_cipher_suite_t **cs;

    for (cs = ctx->cipher_suites; *cs != ((void*)0) && (*cs)->id != id; ++cs)
        ;
    return *cs;
}
