
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct refspec_item {int dummy; } ;


 int _ (char*) ;
 int die (int ,char const*) ;
 int refspec_item_init (struct refspec_item*,char const*,int) ;

void refspec_item_init_or_die(struct refspec_item *item, const char *refspec,
         int fetch)
{
 if (!refspec_item_init(item, refspec, fetch))
  die(_("invalid refspec '%s'"), refspec);
}
