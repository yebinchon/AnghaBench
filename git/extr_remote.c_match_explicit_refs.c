
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct refspec {int nr; int * items; } ;
struct ref {int dummy; } ;


 scalar_t__ match_explicit (struct ref*,struct ref*,struct ref***,int *) ;

__attribute__((used)) static int match_explicit_refs(struct ref *src, struct ref *dst,
          struct ref ***dst_tail, struct refspec *rs)
{
 int i, errs;
 for (i = errs = 0; i < rs->nr; i++)
  errs += match_explicit(src, dst, dst_tail, &rs->items[i]);
 return errs;
}
