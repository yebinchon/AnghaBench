
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int size; int ptr; } ;
typedef TYPE_2__ xrecord_t ;
struct TYPE_6__ {TYPE_2__** recs; } ;
struct TYPE_8__ {TYPE_1__ xdf2; } ;
typedef TYPE_3__ xdfenv_t ;


 int xdl_recmatch (int ,int ,int ,int ,long) ;

__attribute__((used)) static int xdl_merge_cmp_lines(xdfenv_t *xe1, int i1, xdfenv_t *xe2, int i2,
  int line_count, long flags)
{
 int i;
 xrecord_t **rec1 = xe1->xdf2.recs + i1;
 xrecord_t **rec2 = xe2->xdf2.recs + i2;

 for (i = 0; i < line_count; i++) {
  int result = xdl_recmatch(rec1[i]->ptr, rec1[i]->size,
   rec2[i]->ptr, rec2[i]->size, flags);
  if (!result)
   return -1;
 }
 return 0;
}
