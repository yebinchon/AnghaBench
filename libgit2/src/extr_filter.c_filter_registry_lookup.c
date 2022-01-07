
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_filter_def ;
struct TYPE_2__ {int filters; } ;


 TYPE_1__ filter_registry ;
 int filter_registry_find (size_t*,char const*) ;
 int * git_vector_get (int *,size_t) ;

__attribute__((used)) static git_filter_def *filter_registry_lookup(size_t *pos, const char *name)
{
 git_filter_def *fdef = ((void*)0);

 if (!filter_registry_find(pos, name))
  fdef = git_vector_get(&filter_registry.filters, *pos);

 return fdef;
}
