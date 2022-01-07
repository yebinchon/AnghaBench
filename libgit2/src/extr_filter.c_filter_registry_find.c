
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int filters; } ;


 int filter_def_name_key_check ;
 TYPE_1__ filter_registry ;
 int git_vector_search2 (size_t*,int *,int ,char const*) ;

__attribute__((used)) static int filter_registry_find(size_t *pos, const char *name)
{
 return git_vector_search2(
  pos, &filter_registry.filters, filter_def_name_key_check, name);
}
