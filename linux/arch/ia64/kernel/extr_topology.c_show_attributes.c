
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t pcci_cache_attr; } ;
struct cache_info {TYPE_1__ cci; } ;
typedef int ssize_t ;


 char** cache_mattrib ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t show_attributes(struct cache_info *this_leaf, char *buf)
{
 return sprintf(buf,
   "%s\n",
   cache_mattrib[this_leaf->cci.pcci_cache_attr]);
}
