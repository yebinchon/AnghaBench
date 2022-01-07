
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_item {int string; } ;
struct string_list {int nr; struct string_list_item* items; } ;
struct repository {int index; } ;
struct pathspec {int dummy; } ;


 int RERERE_NOAUTOUPDATE ;
 struct string_list STRING_LIST_INIT_DUP ;
 int _ (char*) ;
 int error (int ) ;
 int find_conflict (struct repository*,struct string_list*) ;
 int match_pathspec (int ,struct pathspec*,int ,int ,int ,int *,int ) ;
 scalar_t__ repo_read_index (struct repository*) ;
 int rerere_forget_one_path (int ,int ,struct string_list*) ;
 int setup_rerere (struct repository*,struct string_list*,int ) ;
 int strlen (int ) ;
 int unmerge_index (int ,struct pathspec*) ;
 int write_rr (struct string_list*,int) ;

int rerere_forget(struct repository *r, struct pathspec *pathspec)
{
 int i, fd;
 struct string_list conflict = STRING_LIST_INIT_DUP;
 struct string_list merge_rr = STRING_LIST_INIT_DUP;

 if (repo_read_index(r) < 0)
  return error(_("index file corrupt"));

 fd = setup_rerere(r, &merge_rr, RERERE_NOAUTOUPDATE);
 if (fd < 0)
  return 0;






 unmerge_index(r->index, pathspec);
 find_conflict(r, &conflict);
 for (i = 0; i < conflict.nr; i++) {
  struct string_list_item *it = &conflict.items[i];
  if (!match_pathspec(r->index, pathspec, it->string,
        strlen(it->string), 0, ((void*)0), 0))
   continue;
  rerere_forget_one_path(r->index, it->string, &merge_rr);
 }
 return write_rr(&merge_rr, fd);
}
