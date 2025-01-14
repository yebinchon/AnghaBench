
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct untracked_cache_dir {int dummy; } ;
struct untracked_cache {int dir_flags; } ;


 int DIR_SHOW_OTHER_DIRECTORIES ;
 int invalidate_one_directory (struct untracked_cache*,struct untracked_cache_dir*) ;
 struct untracked_cache_dir* lookup_untracked (struct untracked_cache*,struct untracked_cache_dir*,char const*,int) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static int invalidate_one_component(struct untracked_cache *uc,
        struct untracked_cache_dir *dir,
        const char *path, int len)
{
 const char *rest = strchr(path, '/');

 if (rest) {
  int component_len = rest - path;
  struct untracked_cache_dir *d =
   lookup_untracked(uc, dir, path, component_len);
  int ret =
   invalidate_one_component(uc, d, rest + 1,
       len - (component_len + 1));
  if (ret)
   invalidate_one_directory(uc, dir);
  return ret;
 }

 invalidate_one_directory(uc, dir);
 return uc->dir_flags & DIR_SHOW_OTHER_DIRECTORIES;
}
