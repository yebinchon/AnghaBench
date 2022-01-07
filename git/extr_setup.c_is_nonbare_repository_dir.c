
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {size_t len; int buf; } ;


 int READ_GITFILE_ERR_OPEN_FAILED ;
 int READ_GITFILE_ERR_READ_FAILED ;
 int assert (int) ;
 scalar_t__ is_git_directory (int ) ;
 scalar_t__ read_gitfile_gently (int ,int*) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 int strbuf_complete (struct strbuf*,char) ;
 int strbuf_setlen (struct strbuf*,size_t) ;

int is_nonbare_repository_dir(struct strbuf *path)
{
 int ret = 0;
 int gitfile_error;
 size_t orig_path_len = path->len;
 assert(orig_path_len != 0);
 strbuf_complete(path, '/');
 strbuf_addstr(path, ".git");
 if (read_gitfile_gently(path->buf, &gitfile_error) || is_git_directory(path->buf))
  ret = 1;
 if (gitfile_error == READ_GITFILE_ERR_OPEN_FAILED ||
     gitfile_error == READ_GITFILE_ERR_READ_FAILED)
  ret = 1;
 strbuf_setlen(path, orig_path_len);
 return ret;
}
