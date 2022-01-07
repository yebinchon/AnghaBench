
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_info {int alias_mask; int sets; int entry_shift; int n_aliases; } ;


 int PAGE_SHIFT ;
 int PAGE_SIZE ;

__attribute__((used)) static void compute_alias(struct cache_info *c)
{



 c->alias_mask = 0;

 c->n_aliases = c->alias_mask ? (c->alias_mask >> PAGE_SHIFT) + 1 : 0;
}
