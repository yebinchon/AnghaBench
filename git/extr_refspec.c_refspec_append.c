
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct refspec_item {int dummy; } ;
struct refspec {scalar_t__ raw_nr; struct refspec_item* raw; int raw_alloc; scalar_t__ nr; struct refspec_item* items; int alloc; int fetch; } ;


 int ALLOC_GROW (struct refspec_item*,scalar_t__,int ) ;
 int refspec_item_init_or_die (struct refspec_item*,char const*,int ) ;
 struct refspec_item xstrdup (char const*) ;

void refspec_append(struct refspec *rs, const char *refspec)
{
 struct refspec_item item;

 refspec_item_init_or_die(&item, refspec, rs->fetch);

 ALLOC_GROW(rs->items, rs->nr + 1, rs->alloc);
 rs->items[rs->nr++] = item;

 ALLOC_GROW(rs->raw, rs->raw_nr + 1, rs->raw_alloc);
 rs->raw[rs->raw_nr++] = xstrdup(refspec);
}
