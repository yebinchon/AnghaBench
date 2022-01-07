
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct string_list {int nr; TYPE_3__* items; } ;
struct rerere_id {int dummy; } ;
struct repository {int index; } ;
struct TYPE_6__ {char* string; } ;
struct TYPE_5__ {struct rerere_id* util; } ;
struct TYPE_4__ {int util; } ;


 int GIT_MAX_RAWSZ ;
 struct string_list STRING_LIST_INIT_DUP ;
 int do_rerere_one_path (int ,TYPE_3__*,struct string_list*) ;
 int find_conflict (struct repository*,struct string_list*) ;
 int handle_file (int ,char const*,unsigned char*,int *) ;
 int mkdir_in_gitdir (int ) ;
 struct rerere_id* new_rerere_id (unsigned char*) ;
 int remove_variant (int ) ;
 int rerere_path (struct rerere_id*,int *) ;
 scalar_t__ string_list_has_string (struct string_list*,char const*) ;
 TYPE_2__* string_list_insert (struct string_list*,char const*) ;
 TYPE_1__* string_list_lookup (struct string_list*,char const*) ;
 int string_list_remove (struct string_list*,char const*,int) ;
 int update_paths (struct repository*,struct string_list*) ;
 int write_rr (struct string_list*,int) ;

__attribute__((used)) static int do_plain_rerere(struct repository *r,
      struct string_list *rr, int fd)
{
 struct string_list conflict = STRING_LIST_INIT_DUP;
 struct string_list update = STRING_LIST_INIT_DUP;
 int i;

 find_conflict(r, &conflict);







 for (i = 0; i < conflict.nr; i++) {
  struct rerere_id *id;
  unsigned char hash[GIT_MAX_RAWSZ];
  const char *path = conflict.items[i].string;
  int ret;






  ret = handle_file(r->index, path, hash, ((void*)0));
  if (ret != 0 && string_list_has_string(rr, path)) {
   remove_variant(string_list_lookup(rr, path)->util);
   string_list_remove(rr, path, 1);
  }
  if (ret < 1)
   continue;

  id = new_rerere_id(hash);
  string_list_insert(rr, path)->util = id;


  mkdir_in_gitdir(rerere_path(id, ((void*)0)));
 }

 for (i = 0; i < rr->nr; i++)
  do_rerere_one_path(r->index, &rr->items[i], &update);

 if (update.nr)
  update_paths(r, &update);

 return write_rr(rr, fd);
}
