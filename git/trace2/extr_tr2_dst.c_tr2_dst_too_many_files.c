
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tr2_dst {int too_many_files; int fd; } ;
struct strbuf {int len; int * buf; } ;
struct stat {int dummy; } ;
typedef int DIR ;


 char const* DISCARD_SENTINEL_NAME ;
 int O_CREAT ;
 int O_EXCL ;
 int O_WRONLY ;
 struct strbuf STRBUF_INIT ;
 int TR2_SYSENV_MAX_FILES ;
 int atoi (char const*) ;
 int closedir (int *) ;
 int is_dir_sep (int ) ;
 int open (int *,int,int) ;
 int * opendir (int *) ;
 scalar_t__ readdir (int *) ;
 int stat (int *,struct stat*) ;
 int strbuf_addbuf (struct strbuf*,struct strbuf*) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_release (struct strbuf*) ;
 char* tr2_sysenv_get (int ) ;
 int tr2env_max_files ;

__attribute__((used)) static int tr2_dst_too_many_files(struct tr2_dst *dst, const char *tgt_prefix)
{
 int file_count = 0, max_files = 0, ret = 0;
 const char *max_files_var;
 DIR *dirp;
 struct strbuf path = STRBUF_INIT, sentinel_path = STRBUF_INIT;
 struct stat statbuf;


 max_files_var = tr2_sysenv_get(TR2_SYSENV_MAX_FILES);
 if (max_files_var && *max_files_var && ((max_files = atoi(max_files_var)) >= 0))
  tr2env_max_files = max_files;

 if (!tr2env_max_files) {
  ret = 0;
  goto cleanup;
 }

 strbuf_addstr(&path, tgt_prefix);
 if (!is_dir_sep(path.buf[path.len - 1])) {
  strbuf_addch(&path, '/');
 }


 strbuf_addbuf(&sentinel_path, &path);
 strbuf_addstr(&sentinel_path, DISCARD_SENTINEL_NAME);
 if (!stat(sentinel_path.buf, &statbuf)) {
  ret = 1;
  goto cleanup;
 }


 dirp = opendir(path.buf);
 while (file_count < tr2env_max_files && dirp && readdir(dirp))
  file_count++;
 if (dirp)
  closedir(dirp);

 if (file_count >= tr2env_max_files) {
  dst->too_many_files = 1;
  dst->fd = open(sentinel_path.buf, O_WRONLY | O_CREAT | O_EXCL, 0666);
  ret = -1;
  goto cleanup;
 }

cleanup:
 strbuf_release(&path);
 strbuf_release(&sentinel_path);
 return ret;
}
