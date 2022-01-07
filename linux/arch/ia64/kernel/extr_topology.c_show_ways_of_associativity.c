
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pcci_assoc; } ;
struct cache_info {TYPE_1__ cci; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_ways_of_associativity(struct cache_info *this_leaf,
     char *buf)
{
 return sprintf(buf, "%u\n", this_leaf->cci.pcci_assoc);
}
