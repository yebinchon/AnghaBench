
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct diff_score {size_t dst; int score; size_t src; } ;
struct diff_rename_dst {scalar_t__ pair; } ;
struct TYPE_6__ {TYPE_2__* p; } ;
struct TYPE_5__ {TYPE_1__* one; } ;
struct TYPE_4__ {scalar_t__ rename_used; } ;


 int NUM_CANDIDATE_PER_DST ;
 int record_rename_pair (size_t,size_t,int) ;
 struct diff_rename_dst* rename_dst ;
 TYPE_3__* rename_src ;

__attribute__((used)) static int find_renames(struct diff_score *mx, int dst_cnt, int minimum_score, int copies)
{
 int count = 0, i;

 for (i = 0; i < dst_cnt * NUM_CANDIDATE_PER_DST; i++) {
  struct diff_rename_dst *dst;

  if ((mx[i].dst < 0) ||
      (mx[i].score < minimum_score))
   break;
  dst = &rename_dst[mx[i].dst];
  if (dst->pair)
   continue;
  if (!copies && rename_src[mx[i].src].p->one->rename_used)
   continue;
  record_rename_pair(mx[i].dst, mx[i].src, mx[i].score);
  count++;
 }
 return count;
}
