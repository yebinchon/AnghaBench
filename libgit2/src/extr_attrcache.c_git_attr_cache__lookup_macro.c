
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_strmap ;
typedef int git_repository ;
typedef int git_attr_rule ;
struct TYPE_2__ {int * macros; } ;


 TYPE_1__* git_repository_attr_cache (int *) ;
 int * git_strmap_get (int *,char const*) ;

git_attr_rule *git_attr_cache__lookup_macro(
 git_repository *repo, const char *name)
{
 git_strmap *macros = git_repository_attr_cache(repo)->macros;

 return git_strmap_get(macros, name);
}
