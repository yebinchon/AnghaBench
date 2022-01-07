
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * filter; } ;
typedef TYPE_1__ git_filter_def ;



__attribute__((used)) static int filter_def_filter_key_check(const void *key, const void *fdef)
{
 const void *filter = fdef ? ((const git_filter_def *)fdef)->filter : ((void*)0);
 return (key == filter) ? 0 : -1;
}
