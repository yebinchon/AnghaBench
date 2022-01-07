
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct refspec_item {scalar_t__ matching; scalar_t__ pattern; } ;
struct refspec {int nr; struct refspec_item* items; } ;
struct ref {int dummy; } ;


 int match_explicit_lhs (struct ref*,struct refspec_item*,int *,int *) ;

int check_push_refs(struct ref *src, struct refspec *rs)
{
 int ret = 0;
 int i;

 for (i = 0; i < rs->nr; i++) {
  struct refspec_item *item = &rs->items[i];

  if (item->pattern || item->matching)
   continue;

  ret |= match_explicit_lhs(src, item, ((void*)0), ((void*)0));
 }

 return ret;
}
