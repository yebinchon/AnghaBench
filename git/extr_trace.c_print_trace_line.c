
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_key {int dummy; } ;
struct strbuf {int len; int buf; } ;


 int strbuf_complete_line (struct strbuf*) ;
 int trace_write (struct trace_key*,int ,int ) ;

__attribute__((used)) static void print_trace_line(struct trace_key *key, struct strbuf *buf)
{
 strbuf_complete_line(buf);
 trace_write(key, buf->buf, buf->len);
}
