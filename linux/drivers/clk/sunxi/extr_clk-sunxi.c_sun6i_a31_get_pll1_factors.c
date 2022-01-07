
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct factors_request {int rate; int parent_rate; int k; int m; int n; } ;


 scalar_t__ round_down (scalar_t__,int) ;

__attribute__((used)) static void sun6i_a31_get_pll1_factors(struct factors_request *req)
{




 u32 freq_mhz = req->rate / 1000000;
 u32 parent_freq_mhz = req->parent_rate / 1000000;





 u32 round_freq_6 = round_down(freq_mhz, 6);
 u32 round_freq_16 = round_down(freq_mhz, 16);

 if (round_freq_6 > round_freq_16)
  freq_mhz = round_freq_6;
 else
  freq_mhz = round_freq_16;

 req->rate = freq_mhz * 1000000;


 if (!(freq_mhz % 32))
  req->k = 3;

 else if (!(freq_mhz % 9))
  req->k = 2;

 else if (!(freq_mhz % 8))
  req->k = 1;

 else
  req->k = 0;
 if ((freq_mhz % 6) == 2 || (freq_mhz % 6) == 4)
  req->m = 2;




 else if ((freq_mhz / 6) & 1)
  req->m = 3;

 else
  req->m = 1;


 req->n = freq_mhz * (req->m + 1) / ((req->k + 1) * parent_freq_mhz)
   - 1;





 if ((req->n + 1) > 31 && (req->m + 1) > 1) {
  req->n = (req->n + 1) / 2 - 1;
  req->m = (req->m + 1) / 2 - 1;
 }
}
