
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int len; int buf; } ;
struct stat {int st_mode; } ;
struct index_state {int cache_nr; TYPE_1__** cache; } ;
struct TYPE_2__ {int name; } ;


 struct strbuf STRBUF_INIT ;
 scalar_t__ S_ISDIR (int ) ;
 int has_symlink_leading_path (char const*,int ) ;
 int index_name_pos (struct index_state*,int ,int ) ;
 scalar_t__ is_empty_dir (char const*) ;
 int lstat (char const*,struct stat*) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_release (struct strbuf*) ;
 int strlen (char const*) ;
 int strncmp (int ,int ,int ) ;

__attribute__((used)) static int dir_in_way(struct index_state *istate, const char *path,
        int check_working_copy, int empty_ok)
{
 int pos;
 struct strbuf dirpath = STRBUF_INIT;
 struct stat st;

 strbuf_addstr(&dirpath, path);
 strbuf_addch(&dirpath, '/');

 pos = index_name_pos(istate, dirpath.buf, dirpath.len);

 if (pos < 0)
  pos = -1 - pos;
 if (pos < istate->cache_nr &&
     !strncmp(dirpath.buf, istate->cache[pos]->name, dirpath.len)) {
  strbuf_release(&dirpath);
  return 1;
 }

 strbuf_release(&dirpath);
 return check_working_copy && !lstat(path, &st) && S_ISDIR(st.st_mode) &&
  !(empty_ok && is_empty_dir(path)) &&
  !has_symlink_leading_path(path, strlen(path));
}
