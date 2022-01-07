
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {size_t len; scalar_t__ buf; } ;
struct repository_format {int dummy; } ;


 struct repository_format REPOSITORY_FORMAT_INIT ;
 struct strbuf STRBUF_INIT ;
 int clear_repository_format (struct repository_format*) ;
 int get_common_dir (struct strbuf*,scalar_t__) ;
 int is_absolute_path (scalar_t__) ;
 int read_repository_format (struct repository_format*,scalar_t__) ;
 scalar_t__ setup_git_directory_gently_1 (struct strbuf*,struct strbuf*,int ) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addf (struct strbuf*,char*,scalar_t__) ;
 scalar_t__ strbuf_getcwd (struct strbuf*) ;
 int strbuf_insert (struct strbuf*,size_t,scalar_t__,size_t) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;
 int strbuf_setlen (struct strbuf*,size_t) ;
 int strcmp (char*,scalar_t__) ;
 scalar_t__ verify_repository_format (struct repository_format*,struct strbuf*) ;
 int warning (char*,scalar_t__,scalar_t__) ;

int discover_git_directory(struct strbuf *commondir,
      struct strbuf *gitdir)
{
 struct strbuf dir = STRBUF_INIT, err = STRBUF_INIT;
 size_t gitdir_offset = gitdir->len, cwd_len;
 size_t commondir_offset = commondir->len;
 struct repository_format candidate = REPOSITORY_FORMAT_INIT;

 if (strbuf_getcwd(&dir))
  return -1;

 cwd_len = dir.len;
 if (setup_git_directory_gently_1(&dir, gitdir, 0) <= 0) {
  strbuf_release(&dir);
  return -1;
 }





 if (dir.len < cwd_len && !is_absolute_path(gitdir->buf + gitdir_offset)) {

  if (!strcmp(".", gitdir->buf + gitdir_offset))
   strbuf_setlen(gitdir, gitdir_offset);
  else
   strbuf_addch(&dir, '/');
  strbuf_insert(gitdir, gitdir_offset, dir.buf, dir.len);
 }

 get_common_dir(commondir, gitdir->buf + gitdir_offset);

 strbuf_reset(&dir);
 strbuf_addf(&dir, "%s/config", commondir->buf + commondir_offset);
 read_repository_format(&candidate, dir.buf);
 strbuf_release(&dir);

 if (verify_repository_format(&candidate, &err) < 0) {
  warning("ignoring git dir '%s': %s",
   gitdir->buf + gitdir_offset, err.buf);
  strbuf_release(&err);
  strbuf_setlen(commondir, commondir_offset);
  strbuf_setlen(gitdir, gitdir_offset);
  clear_repository_format(&candidate);
  return -1;
 }

 clear_repository_format(&candidate);
 return 0;
}
