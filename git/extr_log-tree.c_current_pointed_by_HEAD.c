
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct name_decoration {scalar_t__ type; int name; struct name_decoration* next; } ;


 scalar_t__ DECORATION_REF_HEAD ;
 scalar_t__ DECORATION_REF_LOCAL ;
 int REF_ISSYMREF ;
 char* resolve_ref_unsafe (char*,int ,int *,int*) ;
 int starts_with (char const*,char*) ;
 int strcmp (char const*,int ) ;

__attribute__((used)) static const struct name_decoration *current_pointed_by_HEAD(const struct name_decoration *decoration)
{
 const struct name_decoration *list, *head = ((void*)0);
 const char *branch_name = ((void*)0);
 int rru_flags;


 for (list = decoration; list; list = list->next)
  if (list->type == DECORATION_REF_HEAD) {
   head = list;
   break;
  }
 if (!head)
  return ((void*)0);


 branch_name = resolve_ref_unsafe("HEAD", 0, ((void*)0), &rru_flags);
 if (!branch_name || !(rru_flags & REF_ISSYMREF))
  return ((void*)0);

 if (!starts_with(branch_name, "refs/"))
  return ((void*)0);


 for (list = decoration; list; list = list->next)
  if ((list->type == DECORATION_REF_LOCAL) &&
      !strcmp(branch_name, list->name)) {
   return list;
  }

 return ((void*)0);
}
