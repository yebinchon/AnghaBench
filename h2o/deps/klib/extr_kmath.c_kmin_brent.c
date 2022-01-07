
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double (* kmin1_f ) (double,void*) ;


 double fabs (double) ;

double kmin_brent(kmin1_f func, double a, double b, void *data, double tol, double *xmin)
{
 double bound, u, r, q, fu, tmp, fa, fb, fc, c;
 const double gold1 = 1.6180339887;
 const double gold2 = 0.3819660113;
 const double tiny = 1e-20;
 const int max_iter = 100;

 double e, d, w, v, mid, tol1, tol2, p, eold, fv, fw;
 int iter;

 fa = func(a, data); fb = func(b, data);
 if (fb > fa) {
  tmp = a; a = b; b = tmp;
  tmp = fa; fa = fb; fb = tmp;
 }
 c = b + gold1 * (b - a), fc = func(c, data);
 while (fb > fc) {
  bound = b + 100.0 * (c - b);
  r = (b - a) * (fb - fc);
  q = (b - c) * (fb - fa);
  if (fabs(q - r) < tiny) {
   tmp = q > r? tiny : 0.0 - tiny;
  } else tmp = q - r;
  u = b - ((b - c) * q - (b - a) * r) / (2.0 * tmp);
  if ((b > u && u > c) || (b < u && u < c)) {
   fu = func(u, data);
   if (fu < fc) {
    a = b; b = u; fa = fb; fb = fu;
    break;
   } else if (fu > fb) {
    c = u; fc = fu;
    break;
   }
   u = c + gold1 * (c - b); fu = func(u, data);
  } else if ((c > u && u > bound) || (c < u && u < bound)) {
   fu = func(u, data);
   if (fu < fc) {
    b = c; c = u; u = c + gold1 * (c - b);
    fb = fc; fc = fu; fu = func(u, data);
   } else {
    a = b; b = c; c = u;
    fa = fb; fb = fc; fc = fu;
    break;
   }
  } else if ((u > bound && bound > c) || (u < bound && bound < c)) {
   u = bound; fu = func(u, data);
  } else {
   u = c + gold1 * (c - b); fu = func(u, data);
  }
  a = b; b = c; c = u;
  fa = fb; fb = fc; fc = fu;
 }
 if (a > c) u = a, a = c, c = u;


 e = d = 0.0;
 w = v = b; fv = fw = fb;
 for (iter = 0; iter != max_iter; ++iter) {
  mid = 0.5 * (a + c);
  tol2 = 2.0 * (tol1 = tol * fabs(b) + tiny);
  if (fabs(b - mid) <= (tol2 - 0.5 * (c - a))) {
   *xmin = b; return fb;
  }
  if (fabs(e) > tol1) {

   r = (b - w) * (fb - fv);
   q = (b - v) * (fb - fw);
   p = (b - v) * q - (b - w) * r;
   q = 2.0 * (q - r);
   if (q > 0.0) p = 0.0 - p;
   else q = 0.0 - q;
   eold = e; e = d;
   if (fabs(p) >= fabs(0.5 * q * eold) || p <= q * (a - b) || p >= q * (c - b)) {
    d = gold2 * (e = (b >= mid ? a - b : c - b));
   } else {
    d = p / q; u = b + d;
    if (u - a < tol2 || c - u < tol2)
     d = (mid > b)? tol1 : 0.0 - tol1;
   }
  } else d = gold2 * (e = (b >= mid ? a - b : c - b));
  u = fabs(d) >= tol1 ? b + d : b + (d > 0.0? tol1 : -tol1);
  fu = func(u, data);
  if (fu <= fb) {
   if (u >= b) a = b;
   else c = b;
   v = w; w = b; b = u; fv = fw; fw = fb; fb = fu;
  } else {
   if (u < b) a = u;
   else c = u;
   if (fu <= fw || w == b) {
    v = w; w = u;
    fv = fw; fw = fu;
   } else if (fu <= fv || v == b || v == w) {
    v = u; fv = fu;
   }
  }
 }
 *xmin = b;
 return fb;
}
