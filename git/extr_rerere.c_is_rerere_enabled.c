
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int die (int ,int ) ;
 int git_path_rr_cache () ;
 int is_directory (int ) ;
 scalar_t__ mkdir_in_gitdir (int ) ;
 scalar_t__ rerere_enabled ;

__attribute__((used)) static int is_rerere_enabled(void)
{
 int rr_cache_exists;

 if (!rerere_enabled)
  return 0;

 rr_cache_exists = is_directory(git_path_rr_cache());
 if (rerere_enabled < 0)
  return rr_cache_exists;

 if (!rr_cache_exists && mkdir_in_gitdir(git_path_rr_cache()))
  die(_("could not create directory '%s'"), git_path_rr_cache());
 return 1;
}
