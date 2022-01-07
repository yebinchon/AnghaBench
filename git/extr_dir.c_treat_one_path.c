
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct untracked_cache_dir {int dummy; } ;
struct strbuf {int len; int buf; } ;
struct pathspec {int dummy; } ;
struct index_state {int dummy; } ;
struct dirent {int dummy; } ;
struct dir_struct {int flags; } ;
typedef enum path_treatment { ____Placeholder_path_treatment } path_treatment ;


 int DIR_COLLECT_KILLED_ONLY ;
 int DIR_SHOW_IGNORED ;
 int DIR_SHOW_IGNORED_TOO ;
 int DIR_SHOW_IGNORED_TOO_MODE_MATCHING ;



 int DT_UNKNOWN ;
 scalar_t__ directory_exists_in_index (struct index_state*,int ,int ) ;
 int get_dtype (struct dirent*,struct index_state*,int ,int ) ;
 int ignore_case ;
 int index_file_exists (struct index_state*,int ,int ,int ) ;
 scalar_t__ index_nonexistent ;
 int is_excluded (struct dir_struct*,struct index_state*,int ,int*) ;
 int path_excluded ;
 int path_none ;
 int path_recurse ;
 int path_untracked ;
 int strbuf_addch (struct strbuf*,char) ;
 int treat_directory (struct dir_struct*,struct index_state*,struct untracked_cache_dir*,int ,int ,int,int,struct pathspec const*) ;

__attribute__((used)) static enum path_treatment treat_one_path(struct dir_struct *dir,
       struct untracked_cache_dir *untracked,
       struct index_state *istate,
       struct strbuf *path,
       int baselen,
       const struct pathspec *pathspec,
       int dtype, struct dirent *de)
{
 int exclude;
 int has_path_in_index = !!index_file_exists(istate, path->buf, path->len, ignore_case);
 enum path_treatment path_treatment;

 if (dtype == DT_UNKNOWN)
  dtype = get_dtype(de, istate, path->buf, path->len);


 if (dtype != 130 && has_path_in_index)
  return path_none;
 if ((dir->flags & DIR_COLLECT_KILLED_ONLY) &&
     (dtype == 130) &&
     !has_path_in_index &&
     (directory_exists_in_index(istate, path->buf, path->len) == index_nonexistent))
  return path_none;

 exclude = is_excluded(dir, istate, path->buf, &dtype);





 if (exclude && !(dir->flags & (DIR_SHOW_IGNORED|DIR_SHOW_IGNORED_TOO)))
  return path_excluded;

 switch (dtype) {
 default:
  return path_none;
 case 130:
  strbuf_addch(path, '/');
  path_treatment = treat_directory(dir, istate, untracked,
       path->buf, path->len,
       baselen, exclude, pathspec);
  if (!exclude &&
      path_treatment == path_excluded &&
      (dir->flags & DIR_SHOW_IGNORED_TOO) &&
      (dir->flags & DIR_SHOW_IGNORED_TOO_MODE_MATCHING))
   return path_recurse;
  return path_treatment;
 case 128:
 case 129:
  return exclude ? path_excluded : path_untracked;
 }
}
