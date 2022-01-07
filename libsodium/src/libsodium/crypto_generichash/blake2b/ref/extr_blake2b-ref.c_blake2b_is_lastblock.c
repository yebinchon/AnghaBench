
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* f; } ;
typedef TYPE_1__ blake2b_state ;



__attribute__((used)) static inline int
blake2b_is_lastblock(const blake2b_state *S)
{
    return S->f[0] != 0;
}
