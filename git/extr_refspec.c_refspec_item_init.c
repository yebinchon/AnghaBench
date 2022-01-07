
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct refspec_item {int dummy; } ;


 int memset (struct refspec_item*,int ,int) ;
 int parse_refspec (struct refspec_item*,char const*,int) ;

int refspec_item_init(struct refspec_item *item, const char *refspec, int fetch)
{
 memset(item, 0, sizeof(*item));
 return parse_refspec(item, refspec, fetch);
}
