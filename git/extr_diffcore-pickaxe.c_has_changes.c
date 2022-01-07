
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff_options {int dummy; } ;
typedef int regex_t ;
typedef int mmfile_t ;
typedef int kwset_t ;


 unsigned int contains (int *,int *,int ) ;

__attribute__((used)) static int has_changes(mmfile_t *one, mmfile_t *two,
         struct diff_options *o,
         regex_t *regexp, kwset_t kws)
{
 unsigned int one_contains = one ? contains(one, regexp, kws) : 0;
 unsigned int two_contains = two ? contains(two, regexp, kws) : 0;
 return one_contains != two_contains;
}
