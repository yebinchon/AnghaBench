
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct strbuf {int len; int * buf; } ;
struct repository {int worktree; } ;


 int is_dir_sep (int ) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addstr (struct strbuf*,int ) ;
 int strbuf_cleanup_path (struct strbuf*) ;
 int strbuf_vaddf (struct strbuf*,char const*,int ) ;

__attribute__((used)) static void do_worktree_path(const struct repository *repo,
        struct strbuf *buf,
        const char *fmt, va_list args)
{
 strbuf_addstr(buf, repo->worktree);
 if(buf->len && !is_dir_sep(buf->buf[buf->len - 1]))
  strbuf_addch(buf, '/');

 strbuf_vaddf(buf, fmt, args);
 strbuf_cleanup_path(buf);
}
