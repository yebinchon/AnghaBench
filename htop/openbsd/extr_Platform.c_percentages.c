
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;


 scalar_t__ INT64_MAX ;

__attribute__((used)) static int percentages(int cnt, int64_t *out, int64_t *new, int64_t *old, int64_t *diffs) {
   int64_t change, total_change, *dp, half_total;
   int i;


   total_change = 0;
   dp = diffs;


   for (i = 0; i < cnt; i++) {
      if ((change = *new - *old) < 0) {

         change = INT64_MAX - *old + *new;
      }
      total_change += (*dp++ = change);
      *old++ = *new++;
   }


   if (total_change == 0)
      total_change = 1;


   half_total = total_change / 2l;
   for (i = 0; i < cnt; i++)
      *out++ = ((*diffs++ * 1000 + half_total) / total_change);


   return (total_change);
}
