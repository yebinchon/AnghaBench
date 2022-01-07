
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pattern_list {char const* src; } ;
struct exclude_list_group {scalar_t__ nr; struct pattern_list* pl; int alloc; } ;
struct dir_struct {struct exclude_list_group* exclude_list_group; } ;


 int ALLOC_GROW (struct pattern_list*,scalar_t__,int ) ;
 int memset (struct pattern_list*,int ,int) ;

struct pattern_list *add_pattern_list(struct dir_struct *dir,
          int group_type, const char *src)
{
 struct pattern_list *pl;
 struct exclude_list_group *group;

 group = &dir->exclude_list_group[group_type];
 ALLOC_GROW(group->pl, group->nr + 1, group->alloc);
 pl = &group->pl[group->nr++];
 memset(pl, 0, sizeof(*pl));
 pl->src = src;
 return pl;
}
