
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tr2_tbuf {int buf; } ;
struct strbuf {scalar_t__ len; } ;


 scalar_t__ TR2FMT_NORMAL_FL_WIDTH ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addf (struct strbuf*,char*,char const*,int) ;
 int strbuf_addstr (struct strbuf*,int ) ;
 int strbuf_setlen (struct strbuf*,int ) ;
 int tr2_tbuf_local_time (struct tr2_tbuf*) ;
 int tr2env_normal_be_brief ;

__attribute__((used)) static void normal_fmt_prepare(const char *file, int line, struct strbuf *buf)
{
 strbuf_setlen(buf, 0);

 if (!tr2env_normal_be_brief) {
  struct tr2_tbuf tb_now;

  tr2_tbuf_local_time(&tb_now);
  strbuf_addstr(buf, tb_now.buf);
  strbuf_addch(buf, ' ');

  if (file && *file)
   strbuf_addf(buf, "%s:%d ", file, line);
  while (buf->len < TR2FMT_NORMAL_FL_WIDTH)
   strbuf_addch(buf, ' ');
 }
}
