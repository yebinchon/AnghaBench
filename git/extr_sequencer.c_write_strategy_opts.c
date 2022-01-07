
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct replay_opts {int xopts_nr; int * xopts; } ;


 struct strbuf STRBUF_INIT ;
 int rebase_path_strategy_opts () ;
 int strbuf_addf (struct strbuf*,char*,int ) ;
 int strbuf_release (struct strbuf*) ;
 int write_file (int ,char*,int ) ;

__attribute__((used)) static void write_strategy_opts(struct replay_opts *opts)
{
 int i;
 struct strbuf buf = STRBUF_INIT;

 for (i = 0; i < opts->xopts_nr; ++i)
  strbuf_addf(&buf, " --%s", opts->xopts[i]);

 write_file(rebase_path_strategy_opts(), "%s\n", buf.buf);
 strbuf_release(&buf);
}
