
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eni_dev {int tx_bw; } ;


 int DIV_ROUND_UP (int const,int) ;
 int DPRINTK (char*,int,...) ;
 int MID_SEG_MAX_RATE ;
 int const TS_CLOCK ;

__attribute__((used)) static int comp_tx(struct eni_dev *eni_dev,int *pcr,int reserved,int *pre,
    int *res,int unlimited)
{
 static const int pre_div[] = { 4,16,128,2048 };


 if (unlimited) *pre = *res = 0;
 else {
  if (*pcr > 0) {
   int div;

   for (*pre = 0; *pre < 3; (*pre)++)
    if (TS_CLOCK/pre_div[*pre]/64 <= *pcr) break;
   div = pre_div[*pre]**pcr;
   DPRINTK("min div %d\n",div);
   *res = TS_CLOCK/div-1;
  }
  else {
   int div;

   if (!*pcr) *pcr = eni_dev->tx_bw+reserved;
   for (*pre = 3; *pre >= 0; (*pre)--)
    if (TS_CLOCK/pre_div[*pre]/64 > -*pcr) break;
   if (*pre < 3) (*pre)++;
   div = pre_div[*pre]*-*pcr;
   DPRINTK("max div %d\n",div);
   *res = DIV_ROUND_UP(TS_CLOCK, div)-1;
  }
  if (*res < 0) *res = 0;
  if (*res > MID_SEG_MAX_RATE) *res = MID_SEG_MAX_RATE;
 }
 *pcr = TS_CLOCK/pre_div[*pre]/(*res+1);
 DPRINTK("out pcr: %d (%d:%d)\n",*pcr,*pre,*res);
 return 0;
}
