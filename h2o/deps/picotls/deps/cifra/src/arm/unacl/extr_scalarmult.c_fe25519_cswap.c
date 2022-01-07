
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
typedef int int32 ;
struct TYPE_4__ {int* as_uint32; } ;
typedef TYPE_1__ fe25519 ;



__attribute__((used)) static void
fe25519_cswap(
    fe25519* in1,
    fe25519* in2,
    int condition
)
{
    int32 mask = condition;
    uint32 ctr;

    mask = -mask;

    for (ctr = 0; ctr < 8; ctr++)
    {
     uint32 val1 = in1->as_uint32[ctr];
     uint32 val2 = in2->as_uint32[ctr];
     uint32 temp = val1;

     val1 ^= mask & (val2 ^ val1);
     val2 ^= mask & (val2 ^ temp);


     in1->as_uint32[ctr] = val1;
     in2->as_uint32[ctr] = val2;
    }
}
