
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint128_t ;
struct TYPE_3__ {int* t; } ;
typedef TYPE_1__ blake2b_state ;



__attribute__((used)) static inline int
blake2b_increment_counter(blake2b_state *S, const uint64_t inc)
{






    S->t[0] += inc;
    S->t[1] += (S->t[0] < inc);

    return 0;
}
