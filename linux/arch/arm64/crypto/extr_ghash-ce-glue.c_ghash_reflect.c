
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int b; int a; } ;
typedef TYPE_1__ be128 ;


 int BIT (int) ;
 int be64_to_cpu (int ) ;

__attribute__((used)) static void ghash_reflect(u64 h[], const be128 *k)
{
 u64 carry = be64_to_cpu(k->a) & BIT(63) ? 1 : 0;

 h[0] = (be64_to_cpu(k->b) << 1) | carry;
 h[1] = (be64_to_cpu(k->a) << 1) | (be64_to_cpu(k->b) >> 63);

 if (carry)
  h[1] ^= 0xc200000000000000UL;
}
