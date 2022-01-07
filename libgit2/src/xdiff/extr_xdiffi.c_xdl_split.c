
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {long i1; long i2; int min_lo; int min_hi; } ;
typedef TYPE_1__ xdpsplit_t ;
struct TYPE_6__ {long snake_cnt; long heur_min; long mxcost; } ;
typedef TYPE_2__ xdalgoenv_t ;


 long XDL_K_HEUR ;
 long XDL_LINE_MAX ;
 long XDL_MAX (long,long) ;
 long XDL_MIN (long,long) ;

__attribute__((used)) static long xdl_split(unsigned long const *ha1, long off1, long lim1,
        unsigned long const *ha2, long off2, long lim2,
        long *kvdf, long *kvdb, int need_min, xdpsplit_t *spl,
        xdalgoenv_t *xenv) {
 long dmin = off1 - lim2, dmax = lim1 - off2;
 long fmid = off1 - off2, bmid = lim1 - lim2;
 long odd = (fmid - bmid) & 1;
 long fmin = fmid, fmax = fmid;
 long bmin = bmid, bmax = bmid;
 long ec, d, i1, i2, prev1, best, dd, v, k;




 kvdf[fmid] = off1;
 kvdb[bmid] = lim1;

 for (ec = 1;; ec++) {
  int got_snake = 0;
  if (fmin > dmin)
   kvdf[--fmin - 1] = -1;
  else
   ++fmin;
  if (fmax < dmax)
   kvdf[++fmax + 1] = -1;
  else
   --fmax;

  for (d = fmax; d >= fmin; d -= 2) {
   if (kvdf[d - 1] >= kvdf[d + 1])
    i1 = kvdf[d - 1] + 1;
   else
    i1 = kvdf[d + 1];
   prev1 = i1;
   i2 = i1 - d;
   for (; i1 < lim1 && i2 < lim2 && ha1[i1] == ha2[i2]; i1++, i2++);
   if (i1 - prev1 > xenv->snake_cnt)
    got_snake = 1;
   kvdf[d] = i1;
   if (odd && bmin <= d && d <= bmax && kvdb[d] <= i1) {
    spl->i1 = i1;
    spl->i2 = i2;
    spl->min_lo = spl->min_hi = 1;
    return ec;
   }
  }
  if (bmin > dmin)
   kvdb[--bmin - 1] = XDL_LINE_MAX;
  else
   ++bmin;
  if (bmax < dmax)
   kvdb[++bmax + 1] = XDL_LINE_MAX;
  else
   --bmax;

  for (d = bmax; d >= bmin; d -= 2) {
   if (kvdb[d - 1] < kvdb[d + 1])
    i1 = kvdb[d - 1];
   else
    i1 = kvdb[d + 1] - 1;
   prev1 = i1;
   i2 = i1 - d;
   for (; i1 > off1 && i2 > off2 && ha1[i1 - 1] == ha2[i2 - 1]; i1--, i2--);
   if (prev1 - i1 > xenv->snake_cnt)
    got_snake = 1;
   kvdb[d] = i1;
   if (!odd && fmin <= d && d <= fmax && i1 <= kvdf[d]) {
    spl->i1 = i1;
    spl->i2 = i2;
    spl->min_lo = spl->min_hi = 1;
    return ec;
   }
  }

  if (need_min)
   continue;
  if (got_snake && ec > xenv->heur_min) {
   for (best = 0, d = fmax; d >= fmin; d -= 2) {
    dd = d > fmid ? d - fmid: fmid - d;
    i1 = kvdf[d];
    i2 = i1 - d;
    v = (i1 - off1) + (i2 - off2) - dd;

    if (v > XDL_K_HEUR * ec && v > best &&
        off1 + xenv->snake_cnt <= i1 && i1 < lim1 &&
        off2 + xenv->snake_cnt <= i2 && i2 < lim2) {
     for (k = 1; ha1[i1 - k] == ha2[i2 - k]; k++)
      if (k == xenv->snake_cnt) {
       best = v;
       spl->i1 = i1;
       spl->i2 = i2;
       break;
      }
    }
   }
   if (best > 0) {
    spl->min_lo = 1;
    spl->min_hi = 0;
    return ec;
   }

   for (best = 0, d = bmax; d >= bmin; d -= 2) {
    dd = d > bmid ? d - bmid: bmid - d;
    i1 = kvdb[d];
    i2 = i1 - d;
    v = (lim1 - i1) + (lim2 - i2) - dd;

    if (v > XDL_K_HEUR * ec && v > best &&
        off1 < i1 && i1 <= lim1 - xenv->snake_cnt &&
        off2 < i2 && i2 <= lim2 - xenv->snake_cnt) {
     for (k = 0; ha1[i1 + k] == ha2[i2 + k]; k++)
      if (k == xenv->snake_cnt - 1) {
       best = v;
       spl->i1 = i1;
       spl->i2 = i2;
       break;
      }
    }
   }
   if (best > 0) {
    spl->min_lo = 0;
    spl->min_hi = 1;
    return ec;
   }
  }





  if (ec >= xenv->mxcost) {
   long fbest, fbest1, bbest, bbest1;

   fbest = fbest1 = -1;
   for (d = fmax; d >= fmin; d -= 2) {
    i1 = XDL_MIN(kvdf[d], lim1);
    i2 = i1 - d;
    if (lim2 < i2)
     i1 = lim2 + d, i2 = lim2;
    if (fbest < i1 + i2) {
     fbest = i1 + i2;
     fbest1 = i1;
    }
   }

   bbest = bbest1 = XDL_LINE_MAX;
   for (d = bmax; d >= bmin; d -= 2) {
    i1 = XDL_MAX(off1, kvdb[d]);
    i2 = i1 - d;
    if (i2 < off2)
     i1 = off2 + d, i2 = off2;
    if (i1 + i2 < bbest) {
     bbest = i1 + i2;
     bbest1 = i1;
    }
   }

   if ((lim1 + lim2) - bbest < fbest - (off1 + off2)) {
    spl->i1 = fbest1;
    spl->i2 = fbest - fbest1;
    spl->min_lo = 1;
    spl->min_hi = 0;
   } else {
    spl->i1 = bbest1;
    spl->i2 = bbest - bbest1;
    spl->min_lo = 0;
    spl->min_hi = 1;
   }
   return ec;
  }
 }
}
