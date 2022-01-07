
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int assigns; } ;
typedef TYPE_1__ git_attr_rule ;
struct TYPE_6__ {char const* name; int name_hash; } ;
typedef TYPE_2__ git_attr_name ;
typedef int git_attr_assignment ;


 int git_attr_file__name_hash (char const*) ;
 scalar_t__ git_vector_bsearch (size_t*,int *,TYPE_2__*) ;
 int * git_vector_get (int *,size_t) ;

git_attr_assignment *git_attr_rule__lookup_assignment(
 git_attr_rule *rule, const char *name)
{
 size_t pos;
 git_attr_name key;
 key.name = name;
 key.name_hash = git_attr_file__name_hash(name);

 if (git_vector_bsearch(&pos, &rule->assigns, &key))
  return ((void*)0);

 return git_vector_get(&rule->assigns, pos);
}
