
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct histogram {double min; double max; int gap; int num_bins; int max_bins; TYPE_1__* bins; int count; } ;
struct TYPE_2__ {double centroid; int count; } ;


 double INFINITY ;
 scalar_t__ eq (double,double) ;

__attribute__((used)) static void
histogram_update(struct histogram *h, double observation)
{
 unsigned bin;
 double delta;
 double min_delta = INFINITY;


 ++(h->count);
 if (observation < h->min)
  h->min = observation;
 if (observation > h->max)
  h->max = observation;




 while (1) {

  if (h->gap != 0) {


   if (h->bins[h->gap - 1].centroid > observation) {
    h->bins[h->gap] = h->bins[h->gap - 1];
    --(h->gap);
    continue;
   }


   if (eq(h->bins[h->gap - 1].centroid, observation)) {
    ++(h->bins[h->gap - 1].count);
    return;
   }
  }


  if (h->gap != h->num_bins) {


   if (h->bins[h->gap + 1].centroid < observation) {
    h->bins[h->gap] = h->bins[h->gap + 1];
    ++(h->gap);
    continue;
   }


   if (eq(h->bins[h->gap + 1].centroid, observation)) {
    ++(h->bins[h->gap + 1].count);
    return;
   }
  }


  break;
 }


 h->bins[h->gap].centroid = observation;
 h->bins[h->gap].count = 1;



 if (h->num_bins != h->max_bins) {
  h->gap = ++(h->num_bins);
  return;
 }




 for (bin = 0; bin < h->num_bins; ++bin) {
  delta = h->bins[bin + 1].centroid - h->bins[bin].centroid;
  if (delta < min_delta) {
   min_delta = delta;
   h->gap = bin;
  }
 }


 h->bins[h->gap + 1].centroid =
  (h->bins[h->gap].centroid * h->bins[h->gap].count +
   h->bins[h->gap + 1].centroid * h->bins[h->gap + 1].count) /
  (h->bins[h->gap].count + h->bins[h->gap + 1].count);
 h->bins[h->gap + 1].count += h->bins[h->gap].count;
}
