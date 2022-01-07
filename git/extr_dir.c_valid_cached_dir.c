
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct untracked_cache_dir {int valid; int check_only; int stat_data; } ;
struct strbuf {char* buf; int len; } ;
struct stat {int dummy; } ;
struct index_state {int dummy; } ;
struct dir_struct {TYPE_1__* untracked; } ;
struct TYPE_2__ {scalar_t__ use_fsmonitor; } ;


 int fill_stat_data (int *,struct stat*) ;
 scalar_t__ lstat (char*,struct stat*) ;
 scalar_t__ match_stat_data_racy (struct index_state*,int *,struct stat*) ;
 int memset (int *,int ,int) ;
 int prep_exclude (struct dir_struct*,struct index_state*,char*,int ) ;
 int refresh_fsmonitor (struct index_state*) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_setlen (struct strbuf*,int ) ;

__attribute__((used)) static int valid_cached_dir(struct dir_struct *dir,
       struct untracked_cache_dir *untracked,
       struct index_state *istate,
       struct strbuf *path,
       int check_only)
{
 struct stat st;

 if (!untracked)
  return 0;




 refresh_fsmonitor(istate);
 if (!(dir->untracked->use_fsmonitor && untracked->valid)) {
  if (lstat(path->len ? path->buf : ".", &st)) {
   memset(&untracked->stat_data, 0, sizeof(untracked->stat_data));
   return 0;
  }
  if (!untracked->valid ||
   match_stat_data_racy(istate, &untracked->stat_data, &st)) {
   fill_stat_data(&untracked->stat_data, &st);
   return 0;
  }
 }

 if (untracked->check_only != !!check_only)
  return 0;
 if (path->len && path->buf[path->len - 1] != '/') {
  strbuf_addch(path, '/');
  prep_exclude(dir, istate, path->buf, path->len);
  strbuf_setlen(path, path->len - 1);
 } else
  prep_exclude(dir, istate, path->buf, path->len);


 return untracked->valid;
}
