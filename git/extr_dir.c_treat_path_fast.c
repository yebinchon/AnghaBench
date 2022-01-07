
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct untracked_cache_dir {int dummy; } ;
struct strbuf {int len; int buf; } ;
struct pathspec {int dummy; } ;
struct index_state {int dummy; } ;
struct dir_struct {int dummy; } ;
struct cached_dir {TYPE_1__* ucd; int file; } ;
typedef enum path_treatment { ____Placeholder_path_treatment } path_treatment ;
struct TYPE_2__ {scalar_t__ check_only; int name; } ;


 int path_recurse ;
 int path_untracked ;
 int read_directory_recursive (struct dir_struct*,struct index_state*,int ,int ,TYPE_1__*,int,int ,struct pathspec const*) ;
 int strbuf_addstr (struct strbuf*,int ) ;
 int strbuf_complete (struct strbuf*,char) ;
 int strbuf_setlen (struct strbuf*,int) ;

__attribute__((used)) static enum path_treatment treat_path_fast(struct dir_struct *dir,
        struct untracked_cache_dir *untracked,
        struct cached_dir *cdir,
        struct index_state *istate,
        struct strbuf *path,
        int baselen,
        const struct pathspec *pathspec)
{
 strbuf_setlen(path, baselen);
 if (!cdir->ucd) {
  strbuf_addstr(path, cdir->file);
  return path_untracked;
 }
 strbuf_addstr(path, cdir->ucd->name);

 strbuf_complete(path, '/');
 if (cdir->ucd->check_only)





  return read_directory_recursive(dir, istate, path->buf, path->len,
      cdir->ucd, 1, 0, pathspec);






 return path_recurse;
}
