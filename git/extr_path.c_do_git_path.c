
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct worktree {int dummy; } ;
struct strbuf {int len; int * buf; } ;
struct repository {int dummy; } ;


 int adjust_git_path (struct repository const*,struct strbuf*,int) ;
 int is_dir_sep (int ) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_cleanup_path (struct strbuf*) ;
 int strbuf_vaddf (struct strbuf*,char const*,int ) ;
 int strbuf_worktree_gitdir (struct strbuf*,struct repository const*,struct worktree const*) ;

__attribute__((used)) static void do_git_path(const struct repository *repo,
   const struct worktree *wt, struct strbuf *buf,
   const char *fmt, va_list args)
{
 int gitdir_len;
 strbuf_worktree_gitdir(buf, repo, wt);
 if (buf->len && !is_dir_sep(buf->buf[buf->len - 1]))
  strbuf_addch(buf, '/');
 gitdir_len = buf->len;
 strbuf_vaddf(buf, fmt, args);
 if (!wt)
  adjust_git_path(repo, buf, gitdir_len);
 strbuf_cleanup_path(buf);
}
