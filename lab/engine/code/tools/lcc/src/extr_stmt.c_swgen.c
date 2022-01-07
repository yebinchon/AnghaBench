
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {long* values; int ncases; } ;
typedef TYPE_1__* Swtch ;


 int FUNC ;
 scalar_t__ den (int,int) ;
 scalar_t__ density ;
 int* newarray (int,int,int ) ;
 int swcode (TYPE_1__*,int*,int ,int) ;

void swgen(Swtch swp) {
 int *buckets, k, n;
 long *v = swp->values;

 buckets = newarray(swp->ncases + 1,
  sizeof *buckets, FUNC);
 for (n = k = 0; k < swp->ncases; k++, n++) {
  buckets[n] = k;
  while (n > 0 && den(n-1, k) >= density)
   n--;
 }
 buckets[n] = swp->ncases;
 swcode(swp, buckets, 0, n - 1);
}
