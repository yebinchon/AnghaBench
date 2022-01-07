
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tr2_dst {int sysenv_var; } ;
struct strbuf {int len; int buf; } ;


 int errno ;
 int strbuf_complete_line (struct strbuf*) ;
 int strerror (int ) ;
 int tr2_dst_get_trace_fd (struct tr2_dst*) ;
 int tr2_dst_trace_disable (struct tr2_dst*) ;
 scalar_t__ tr2_dst_want_warning () ;
 int tr2_sysenv_display_name (int ) ;
 int warning (char*,int ,int ) ;
 scalar_t__ write (int,int ,int ) ;

void tr2_dst_write_line(struct tr2_dst *dst, struct strbuf *buf_line)
{
 int fd = tr2_dst_get_trace_fd(dst);

 strbuf_complete_line(buf_line);
 if (write(fd, buf_line->buf, buf_line->len) >= 0)
  return;

 if (tr2_dst_want_warning())
  warning("unable to write trace to '%s': %s",
   tr2_sysenv_display_name(dst->sysenv_var),
   strerror(errno));
 tr2_dst_trace_disable(dst);
}
