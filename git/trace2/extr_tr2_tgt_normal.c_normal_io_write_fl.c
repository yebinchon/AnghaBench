
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int normal_fmt_prepare (char const*,int,struct strbuf*) ;
 int strbuf_addbuf (struct strbuf*,struct strbuf const*) ;
 int strbuf_release (struct strbuf*) ;
 int tr2_dst_write_line (int *,struct strbuf*) ;
 int tr2dst_normal ;

__attribute__((used)) static void normal_io_write_fl(const char *file, int line,
          const struct strbuf *buf_payload)
{
 struct strbuf buf_line = STRBUF_INIT;

 normal_fmt_prepare(file, line, &buf_line);
 strbuf_addbuf(&buf_line, buf_payload);
 tr2_dst_write_line(&tr2dst_normal, &buf_line);
 strbuf_release(&buf_line);
}
