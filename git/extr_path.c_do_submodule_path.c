
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct strbuf {int buf; int len; } ;


 struct strbuf STRBUF_INIT ;
 scalar_t__ get_common_dir_noenv (struct strbuf*,int ) ;
 int strbuf_addbuf (struct strbuf*,struct strbuf*) ;
 int strbuf_cleanup_path (struct strbuf*) ;
 int strbuf_complete (struct strbuf*,char) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_vaddf (struct strbuf*,char const*,int ) ;
 int submodule_to_gitdir (struct strbuf*,char const*) ;
 int update_common_dir (struct strbuf*,int ,int ) ;

__attribute__((used)) static int do_submodule_path(struct strbuf *buf, const char *path,
        const char *fmt, va_list args)
{
 struct strbuf git_submodule_common_dir = STRBUF_INIT;
 struct strbuf git_submodule_dir = STRBUF_INIT;
 int ret;

 ret = submodule_to_gitdir(&git_submodule_dir, path);
 if (ret)
  goto cleanup;

 strbuf_complete(&git_submodule_dir, '/');
 strbuf_addbuf(buf, &git_submodule_dir);
 strbuf_vaddf(buf, fmt, args);

 if (get_common_dir_noenv(&git_submodule_common_dir, git_submodule_dir.buf))
  update_common_dir(buf, git_submodule_dir.len, git_submodule_common_dir.buf);

 strbuf_cleanup_path(buf);

cleanup:
 strbuf_release(&git_submodule_dir);
 strbuf_release(&git_submodule_common_dir);
 return ret;
}
