
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct stm_fs {int sdiv; int nsdiv; int mdiv; int pe; } ;


 int P20 ;
 scalar_t__ div64_u64 (unsigned long,int) ;

__attribute__((used)) static int clk_fs660c32_dig_get_rate(unsigned long input,
    const struct stm_fs *fs, unsigned long *rate)
{
 unsigned long s = (1 << fs->sdiv);
 unsigned long ns;
 uint64_t res;
 ns = (fs->nsdiv == 1) ? 1 : 3;

 res = (P20 * (32 + fs->mdiv) + 32 * fs->pe) * s * ns;
 *rate = (unsigned long)div64_u64(input * P20 * 32, res);

 return 0;
}
