
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fid; } ;
typedef TYPE_1__ score ;



int cmp_score_fid (const void *a, const void *b) {
  return ((score *)a)->fid - ((score *)b)->fid;
}
