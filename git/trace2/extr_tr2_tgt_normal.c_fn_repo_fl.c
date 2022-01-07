
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct repository {int worktree; } ;


 struct strbuf STRBUF_INIT ;
 int normal_io_write_fl (char const*,int,struct strbuf*) ;
 int sq_quote_buf_pretty (struct strbuf*,int ) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static void fn_repo_fl(const char *file, int line,
         const struct repository *repo)
{
 struct strbuf buf_payload = STRBUF_INIT;

 strbuf_addstr(&buf_payload, "worktree ");
 sq_quote_buf_pretty(&buf_payload, repo->worktree);
 normal_io_write_fl(file, line, &buf_payload);
 strbuf_release(&buf_payload);
}
