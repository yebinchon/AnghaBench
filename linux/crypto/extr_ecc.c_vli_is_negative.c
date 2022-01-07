
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int vli_test_bit (int const*,unsigned int) ;

__attribute__((used)) static bool vli_is_negative(const u64 *vli, unsigned int ndigits)
{
 return vli_test_bit(vli, ndigits * 64 - 1);
}
