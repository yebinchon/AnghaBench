
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_4__ {int * as_uint32; } ;
typedef TYPE_1__ fe25519 ;



__attribute__((used)) static void
fe25519_cpy(
    fe25519* dest,
    const fe25519* source
)
{
    uint32 ctr;

    for (ctr = 0; ctr < 8; ctr++)
    {
        dest->as_uint32[ctr] = source->as_uint32[ctr];
    }
}
