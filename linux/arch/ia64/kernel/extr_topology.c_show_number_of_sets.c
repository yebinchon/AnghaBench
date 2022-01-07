
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int pcci_cache_size; unsigned int pcci_assoc; int pcci_line_size; } ;
struct cache_info {TYPE_1__ cci; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,unsigned int) ;

__attribute__((used)) static ssize_t show_number_of_sets(struct cache_info *this_leaf, char *buf)
{
 unsigned number_of_sets = this_leaf->cci.pcci_cache_size;
 number_of_sets /= this_leaf->cci.pcci_assoc;
 number_of_sets /= 1 << this_leaf->cci.pcci_line_size;

 return sprintf(buf, "%u\n", number_of_sets);
}
