
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long long uint64_t ;
struct stm_fs {int pe; int nsdiv; int sdiv; int mdiv; } ;


 unsigned long abs (unsigned long) ;
 int clk_fs660c32_dig_get_rate (unsigned long,struct stm_fs*,unsigned long*) ;
 int clk_fs660c32_get_pe (int,int,unsigned long*,unsigned long,unsigned long,long long*,struct stm_fs*) ;

__attribute__((used)) static int clk_fs660c32_dig_get_params(unsigned long input,
  unsigned long output, struct stm_fs *fs)
{
 int si;
 int m;
 unsigned long new_freq, new_deviation;

 unsigned long deviation = ~0;
 uint64_t p, p1, p2;
 int r1, r2;

 struct stm_fs fs_tmp;

 for (si = 0; (si <= 8) && deviation; si++) {


  r1 = clk_fs660c32_get_pe(0, si, &deviation,
    input, output, &p1, fs);
  r2 = clk_fs660c32_get_pe(31, si, &deviation,
    input, output, &p2, fs);


  if (r1 && r2 && (p1 > p2))
   continue;


  for (m = 1; (m < 31) && deviation; m++)
   clk_fs660c32_get_pe(m, si, &deviation,
     input, output, &p, fs);

 }

 if (deviation == ~0)
  return -1;


 if (deviation) {
  fs_tmp.mdiv = fs->mdiv;
  fs_tmp.sdiv = fs->sdiv;
  fs_tmp.nsdiv = fs->nsdiv;

  if (fs->pe > 2)
   p2 = fs->pe - 2;
  else
   p2 = 0;

  for (; p2 < 32768ll && (p2 <= (fs->pe + 2)); p2++) {
   fs_tmp.pe = (unsigned long)p2;

   clk_fs660c32_dig_get_rate(input, &fs_tmp, &new_freq);

   new_deviation = abs(output - new_freq);


   if (new_deviation < deviation) {
    fs->pe = (unsigned long)p2;
    deviation = new_deviation;

   }
  }
 }
 return 0;
}
