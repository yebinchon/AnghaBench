
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {int strdup_strings; int cmp; } ;
struct TYPE_2__ {scalar_t__ have_repository; } ;


 char* git_mailmap_blob ;
 char* git_mailmap_file ;
 scalar_t__ is_bare_repository () ;
 int namemap_cmp ;
 int read_mailmap_blob (struct string_list*,char*,char**) ;
 int read_mailmap_file (struct string_list*,char*,char**) ;
 TYPE_1__* startup_info ;

int read_mailmap(struct string_list *map, char **repo_abbrev)
{
 int err = 0;

 map->strdup_strings = 1;
 map->cmp = namemap_cmp;

 if (!git_mailmap_blob && is_bare_repository())
  git_mailmap_blob = "HEAD:.mailmap";

 err |= read_mailmap_file(map, ".mailmap", repo_abbrev);
 if (startup_info->have_repository)
  err |= read_mailmap_blob(map, git_mailmap_blob, repo_abbrev);
 err |= read_mailmap_file(map, git_mailmap_file, repo_abbrev);
 return err;
}
