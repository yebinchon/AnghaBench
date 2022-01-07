
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_entry {int ce_flags; scalar_t__ ce_mode; int oid; } ;


 int CE_CONFLICTED ;
 scalar_t__ oideq (int *,int *) ;

__attribute__((used)) static int same(const struct cache_entry *a, const struct cache_entry *b)
{
 if (!!a != !!b)
  return 0;
 if (!a && !b)
  return 1;
 if ((a->ce_flags | b->ce_flags) & CE_CONFLICTED)
  return 0;
 return a->ce_mode == b->ce_mode &&
        oideq(&a->oid, &b->oid);
}
