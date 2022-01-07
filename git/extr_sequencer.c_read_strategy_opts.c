
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct replay_opts {int strategy; } ;


 int parse_strategy_opts (struct replay_opts*,int ) ;
 int read_oneliner (struct strbuf*,int ,int ) ;
 int rebase_path_strategy () ;
 int rebase_path_strategy_opts () ;
 int strbuf_detach (struct strbuf*,int *) ;
 int strbuf_reset (struct strbuf*) ;

__attribute__((used)) static void read_strategy_opts(struct replay_opts *opts, struct strbuf *buf)
{
 strbuf_reset(buf);
 if (!read_oneliner(buf, rebase_path_strategy(), 0))
  return;
 opts->strategy = strbuf_detach(buf, ((void*)0));
 if (!read_oneliner(buf, rebase_path_strategy_opts(), 0))
  return;

 parse_strategy_opts(opts, buf->buf);
}
