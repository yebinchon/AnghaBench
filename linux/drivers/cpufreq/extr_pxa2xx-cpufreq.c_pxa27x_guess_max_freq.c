
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_info (char*,int) ;
 int pxa27x_maxfreq ;

__attribute__((used)) static void pxa27x_guess_max_freq(void)
{
 if (!pxa27x_maxfreq) {
  pxa27x_maxfreq = 416000;
  pr_info("PXA CPU 27x max frequency not defined (pxa27x_maxfreq), assuming pxa271 with %dkHz maxfreq\n",
   pxa27x_maxfreq);
 } else {
  pxa27x_maxfreq *= 1000;
 }
}
