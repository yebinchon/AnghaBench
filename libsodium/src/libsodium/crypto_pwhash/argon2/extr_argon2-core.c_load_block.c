
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int * v; } ;
typedef TYPE_1__ block ;


 unsigned int ARGON2_QWORDS_IN_BLOCK ;
 int LOAD64_LE (int const*) ;

__attribute__((used)) static void
load_block(block *dst, const void *input)
{
    unsigned i;
    for (i = 0; i < ARGON2_QWORDS_IN_BLOCK; ++i) {
        dst->v[i] = LOAD64_LE((const uint8_t *) input + i * sizeof(dst->v[i]));
    }
}
