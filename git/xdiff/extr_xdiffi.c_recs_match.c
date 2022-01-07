
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ha; int size; int ptr; } ;
typedef TYPE_1__ xrecord_t ;


 scalar_t__ xdl_recmatch (int ,int ,int ,int ,long) ;

__attribute__((used)) static int recs_match(xrecord_t *rec1, xrecord_t *rec2, long flags)
{
 return (rec1->ha == rec2->ha &&
  xdl_recmatch(rec1->ptr, rec1->size,
        rec2->ptr, rec2->size,
        flags));
}
