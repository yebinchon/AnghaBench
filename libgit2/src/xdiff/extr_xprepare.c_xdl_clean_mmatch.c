
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long XDL_KPDIS_RUN ;
 long XDL_SIMSCAN_WINDOW ;

__attribute__((used)) static int xdl_clean_mmatch(char const *dis, long i, long s, long e) {
 long r, rdis0, rpdis0, rdis1, rpdis1;
 if (i - s > XDL_SIMSCAN_WINDOW)
  s = i - XDL_SIMSCAN_WINDOW;
 if (e - i > XDL_SIMSCAN_WINDOW)
  e = i + XDL_SIMSCAN_WINDOW;







 for (r = 1, rdis0 = 0, rpdis0 = 1; (i - r) >= s; r++) {
  if (!dis[i - r])
   rdis0++;
  else if (dis[i - r] == 2)
   rpdis0++;
  else
   break;
 }






 if (rdis0 == 0)
  return 0;
 for (r = 1, rdis1 = 0, rpdis1 = 1; (i + r) <= e; r++) {
  if (!dis[i + r])
   rdis1++;
  else if (dis[i + r] == 2)
   rpdis1++;
  else
   break;
 }




 if (rdis1 == 0)
  return 0;
 rdis1 += rdis0;
 rpdis1 += rpdis0;

 return rpdis1 * XDL_KPDIS_RUN < (rpdis1 + rdis1);
}
