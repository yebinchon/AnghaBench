
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct untracked_cache_dir {int check_only; } ;
struct strbuf {char* buf; int len; } ;
struct pathspec {int dummy; } ;
struct index_state {int dummy; } ;
struct dir_struct {int flags; int untracked; } ;
struct cached_dir {scalar_t__ fdir; int de; } ;
typedef enum path_treatment { ____Placeholder_path_treatment } path_treatment ;


 int DIR_COLLECT_IGNORED ;
 int DIR_SHOW_IGNORED ;
 int DIR_SHOW_IGNORED_TOO ;
 int DO_MATCH_LEADING_PATHSPEC ;
 scalar_t__ DT_DIR ;
 scalar_t__ MATCHED_RECURSIVELY_LEADING_PATHSPEC ;
 struct strbuf STRBUF_INIT ;
 int add_untracked (struct untracked_cache_dir*,char*) ;
 int close_cached_dir (struct cached_dir*) ;
 int dir_add_ignored (struct dir_struct*,struct index_state*,char*,int) ;
 int dir_add_name (struct dir_struct*,struct index_state*,char*,int) ;
 scalar_t__ do_match_pathspec (struct index_state*,struct pathspec const*,char*,int,int,int *,int ) ;
 int exclude_matches_pathspec (char*,int,struct pathspec const*) ;
 scalar_t__ get_dtype (int ,struct index_state*,char*,int) ;
 struct untracked_cache_dir* lookup_untracked (int ,struct untracked_cache_dir*,char*,int) ;
 int match_pathspec (struct index_state*,struct pathspec const*,char*,int,int ,int *,int ) ;
 scalar_t__ open_cached_dir (struct cached_dir*,struct dir_struct*,struct untracked_cache_dir*,struct index_state*,struct strbuf*,int) ;

 int path_none ;
 int path_recurse ;

 int read_cached_dir (struct cached_dir*) ;
 int strbuf_add (struct strbuf*,char const*,int) ;
 int strbuf_release (struct strbuf*) ;
 int treat_path (struct dir_struct*,struct untracked_cache_dir*,struct cached_dir*,struct index_state*,struct strbuf*,int,struct pathspec const*) ;

__attribute__((used)) static enum path_treatment read_directory_recursive(struct dir_struct *dir,
 struct index_state *istate, const char *base, int baselen,
 struct untracked_cache_dir *untracked, int check_only,
 int stop_at_first_file, const struct pathspec *pathspec)
{
 struct cached_dir cdir;
 enum path_treatment state, subdir_state, dir_state = path_none;
 struct strbuf path = STRBUF_INIT;

 strbuf_add(&path, base, baselen);

 if (open_cached_dir(&cdir, dir, untracked, istate, &path, check_only))
  goto out;

 if (untracked)
  untracked->check_only = !!check_only;

 while (!read_cached_dir(&cdir)) {

  state = treat_path(dir, untracked, &cdir, istate, &path,
       baselen, pathspec);

  if (state > dir_state)
   dir_state = state;


  if ((state == path_recurse) ||
   ((state == 128) &&
    (get_dtype(cdir.de, istate, path.buf, path.len) == DT_DIR) &&
    ((dir->flags & DIR_SHOW_IGNORED_TOO) ||
     (pathspec &&
      do_match_pathspec(istate, pathspec, path.buf, path.len,
          baselen, ((void*)0), DO_MATCH_LEADING_PATHSPEC) == MATCHED_RECURSIVELY_LEADING_PATHSPEC)))) {
   struct untracked_cache_dir *ud;
   ud = lookup_untracked(dir->untracked, untracked,
           path.buf + baselen,
           path.len - baselen);
   subdir_state =
    read_directory_recursive(dir, istate, path.buf,
        path.len, ud,
        check_only, stop_at_first_file, pathspec);
   if (subdir_state > dir_state)
    dir_state = subdir_state;

   if (pathspec &&
       !match_pathspec(istate, pathspec, path.buf, path.len,
         0 , ((void*)0),
         0 ))
    state = path_none;
  }

  if (check_only) {
   if (stop_at_first_file) {
    if (dir_state >= 129) {
     dir_state = 129;
     break;
    }
   }


   if (dir_state == 128) {
    if (cdir.fdir)
     add_untracked(untracked, path.buf + baselen);
    break;
   }

   continue;
  }


  switch (state) {
  case 129:
   if (dir->flags & DIR_SHOW_IGNORED)
    dir_add_name(dir, istate, path.buf, path.len);
   else if ((dir->flags & DIR_SHOW_IGNORED_TOO) ||
    ((dir->flags & DIR_COLLECT_IGNORED) &&
    exclude_matches_pathspec(path.buf, path.len,
        pathspec)))
    dir_add_ignored(dir, istate, path.buf, path.len);
   break;

  case 128:
   if (dir->flags & DIR_SHOW_IGNORED)
    break;
   dir_add_name(dir, istate, path.buf, path.len);
   if (cdir.fdir)
    add_untracked(untracked, path.buf + baselen);
   break;

  default:
   break;
  }
 }
 close_cached_dir(&cdir);
 out:
 strbuf_release(&path);

 return dir_state;
}
