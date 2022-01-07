
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ ha; int size; int ptr; } ;
typedef TYPE_1__ xrecord_t ;
struct TYPE_7__ {int flags; } ;
typedef TYPE_2__ xpparam_t ;


 scalar_t__ xdl_recmatch (int ,int ,int ,int ,int ) ;

__attribute__((used)) static int cmp_recs(xpparam_t const *xpp,
 xrecord_t *r1, xrecord_t *r2)
{
 return r1->ha == r2->ha &&
  xdl_recmatch(r1->ptr, r1->size, r2->ptr, r2->size,
       xpp->flags);
}
