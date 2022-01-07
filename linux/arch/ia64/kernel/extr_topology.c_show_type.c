
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pcci_unified; } ;
struct cache_info {int type; TYPE_1__ cci; } ;
typedef int ssize_t ;


 char** cache_types ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t show_type(struct cache_info *this_leaf, char *buf)
{
 int type = this_leaf->type + this_leaf->cci.pcci_unified;
 return sprintf(buf, "%s\n", cache_types[type]);
}
