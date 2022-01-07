
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct refspec_item {int dummy; } ;


 int REFSPEC_FETCH ;
 int refspec_item_clear (struct refspec_item*) ;
 int refspec_item_init (struct refspec_item*,char const*,int ) ;

int valid_fetch_refspec(const char *fetch_refspec_str)
{
 struct refspec_item refspec;
 int ret = refspec_item_init(&refspec, fetch_refspec_str, REFSPEC_FETCH);
 refspec_item_clear(&refspec);
 return ret;
}
