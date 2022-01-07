
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {long long x; scalar_t__ y; } ;
typedef TYPE_1__ hmap_pair_ll_int ;
typedef int data ;
struct TYPE_5__ {int y; } ;


 scalar_t__ H_ADD ;
 int * dl_realloc (int *,int,int) ;
 int h_pref ;
 TYPE_2__* hmap_ll_int_add (int *,TYPE_1__) ;
 int memset (int ,int ,int) ;
 int prefn ;
 int prefr ;
 int * suggs ;

int add_pref (long long h) {
  h += H_ADD;
  hmap_pair_ll_int tmp;
  tmp.x = h;
  tmp.y = 0;
  int *pid = &(hmap_ll_int_add (&h_pref, tmp)->y);

  if (prefn + 3 > prefr) {
    int nprefr = prefr * 2 + 3;
    suggs = dl_realloc (suggs, sizeof (data) * nprefr, sizeof (data) * prefr);
    prefr = nprefr;
  }

  if (*pid == 0) {
    *pid = ++prefn;
    memset (suggs[prefn], 0, sizeof (data));
  }

  return *pid;
}
