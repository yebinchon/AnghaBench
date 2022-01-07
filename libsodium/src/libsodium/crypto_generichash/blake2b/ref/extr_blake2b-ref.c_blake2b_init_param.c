
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int * h; } ;
typedef TYPE_1__ blake2b_state ;
typedef int blake2b_param ;


 int COMPILER_ASSERT (int) ;
 int LOAD64_LE (int const*) ;
 int blake2b_init0 (TYPE_1__*) ;

int
blake2b_init_param(blake2b_state *S, const blake2b_param *P)
{
    size_t i;
    const uint8_t *p;

    COMPILER_ASSERT(sizeof *P == 64);
    blake2b_init0(S);
    p = (const uint8_t *) (P);


    for (i = 0; i < 8; i++) {
        S->h[i] ^= LOAD64_LE(p + sizeof(S->h[i]) * i);
    }
    return 0;
}
