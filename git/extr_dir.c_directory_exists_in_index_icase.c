
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int dummy; } ;
struct cache_entry {int ce_mode; } ;
typedef enum exist_status { ____Placeholder_exist_status } exist_status ;


 scalar_t__ S_ISGITLINK (int ) ;
 int ignore_case ;
 scalar_t__ index_dir_exists (struct index_state*,char const*,int) ;
 int index_directory ;
 struct cache_entry* index_file_exists (struct index_state*,char const*,int,int ) ;
 int index_gitdir ;
 int index_nonexistent ;

__attribute__((used)) static enum exist_status directory_exists_in_index_icase(struct index_state *istate,
        const char *dirname, int len)
{
 struct cache_entry *ce;

 if (index_dir_exists(istate, dirname, len))
  return index_directory;

 ce = index_file_exists(istate, dirname, len, ignore_case);
 if (ce && S_ISGITLINK(ce->ce_mode))
  return index_gitdir;

 return index_nonexistent;
}
