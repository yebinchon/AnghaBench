
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct histogram {double count; double min; double max; unsigned int num_bins; unsigned int gap; struct bin* bins; } ;
struct bin {double centroid; double count; int member_1; int member_0; } ;


 scalar_t__ eq (double,int ) ;
 double sqrt (double) ;

__attribute__((used)) static double
histogram_query(const struct histogram *h, double quantile)
{
 unsigned lhs = 0, rhs = 0;
 struct bin lhs_bin = { 0, 0 }, rhs_bin = { 0, 0 };
 double lhs_total = 0, rhs_total = 0;
 double a = 0, b = 0, c = 0, z = 0;




 double needle = h->count * quantile;
 if (quantile <= 0)
  return h->min;
 if (quantile >= 1)
  return h->max;
 while (rhs_total < needle) {


  if (rhs == 0) {
   lhs_bin.centroid = h->min;
   lhs_bin.count = 0;
  } else {
   lhs_bin = h->bins[lhs];
  }


  if (rhs > h->num_bins) {
   lhs_bin.centroid = h->max;
   rhs_bin.count = 0;
  } else {
   rhs_bin = h->bins[rhs];
  }




  lhs_total = rhs_total;
  rhs_total += 0.5 * (lhs_bin.count + rhs_bin.count);




  lhs = rhs++;
  if (rhs == h->gap)
   rhs++;
 }


 a = rhs_bin.count - lhs_bin.count;
 if (eq(a, 0)) {
  b = rhs_total - lhs_total;
  z = eq(b, 0) ? 0 : (needle - lhs_total) / b;
 } else {
  b = 2 * lhs_bin.count;
  c = 2 * (lhs_total - needle);
  z = (-b + sqrt(b * b - 4 * a * c)) / (2 * a);
 }
 return lhs_bin.centroid + (rhs_bin.centroid - lhs_bin.centroid) * z;
}
