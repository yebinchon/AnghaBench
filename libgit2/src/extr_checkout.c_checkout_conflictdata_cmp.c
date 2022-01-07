
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int theirs; int ours; int ancestor; } ;
typedef TYPE_1__ checkout_conflictdata ;


 int checkout_idxentry_cmp (int ,int ) ;

__attribute__((used)) static int checkout_conflictdata_cmp(const void *a, const void *b)
{
 const checkout_conflictdata *ca = a;
 const checkout_conflictdata *cb = b;
 int diff;

 if ((diff = checkout_idxentry_cmp(ca->ancestor, cb->ancestor)) == 0 &&
  (diff = checkout_idxentry_cmp(ca->ours, cb->theirs)) == 0)
  diff = checkout_idxentry_cmp(ca->theirs, cb->theirs);

 return diff;
}
