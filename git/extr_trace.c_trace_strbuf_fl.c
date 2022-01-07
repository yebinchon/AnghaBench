
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_key {int dummy; } ;
struct strbuf {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int prepare_trace_line (char const*,int,struct trace_key*,struct strbuf*) ;
 int print_trace_line (struct trace_key*,struct strbuf*) ;
 int strbuf_addbuf (struct strbuf*,struct strbuf const*) ;
 int strbuf_release (struct strbuf*) ;

void trace_strbuf_fl(const char *file, int line, struct trace_key *key,
       const struct strbuf *data)
{
 struct strbuf buf = STRBUF_INIT;

 if (!prepare_trace_line(file, line, key, &buf))
  return;

 strbuf_addbuf(&buf, data);
 print_trace_line(key, &buf);
 strbuf_release(&buf);
}
