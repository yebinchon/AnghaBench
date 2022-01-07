
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ size; } ;
struct TYPE_6__ {int opt; TYPE_2__ maxs; TYPE_2__ mins; int lines; } ;
typedef TYPE_1__ git_hashsig ;


 int GIT_HASHSIG_IGNORE_WHITESPACE ;
 scalar_t__ HASHSIG_HEAP_SIZE ;
 int HASHSIG_SCALE ;
 int hashsig_heap_compare (TYPE_2__*,TYPE_2__*) ;

int git_hashsig_compare(const git_hashsig *a, const git_hashsig *b)
{




 if (a->mins.size == 0 && b->mins.size == 0) {
  if ((!a->lines && !b->lines) ||
   (a->opt & GIT_HASHSIG_IGNORE_WHITESPACE))
   return HASHSIG_SCALE;
  else
   return 0;
 }




 if (a->mins.size < HASHSIG_HEAP_SIZE)
  return hashsig_heap_compare(&a->mins, &b->mins);
 else
  return (hashsig_heap_compare(&a->mins, &b->mins) +
    hashsig_heap_compare(&a->maxs, &b->maxs)) / 2;
}
