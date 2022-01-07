
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;



__attribute__((used)) static u64 vli_test_bit(const u64 *vli, unsigned int bit)
{
 return (vli[bit / 64] & ((u64)1 << (bit % 64)));
}
