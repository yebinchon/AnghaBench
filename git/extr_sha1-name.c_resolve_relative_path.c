
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct repository {int dummy; } ;
struct TYPE_2__ {scalar_t__ prefix; } ;


 int die (char*) ;
 int is_inside_work_tree () ;
 char* prefix_path (scalar_t__,int ,char const*) ;
 int starts_with (char const*,char*) ;
 TYPE_1__* startup_info ;
 int strlen (scalar_t__) ;
 struct repository* the_repository ;

__attribute__((used)) static char *resolve_relative_path(struct repository *r, const char *rel)
{
 if (!starts_with(rel, "./") && !starts_with(rel, "../"))
  return ((void*)0);

 if (r != the_repository || !is_inside_work_tree())
  die("relative path syntax can't be used outside working tree.");


 return prefix_path(startup_info->prefix,
      startup_info->prefix ? strlen(startup_info->prefix) : 0,
      rel);
}
