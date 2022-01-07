
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tr2_dst {int fd; int need_close; int initialized; int sysenv_var; } ;


 int O_APPEND ;
 int O_CREAT ;
 int O_WRONLY ;
 int errno ;
 int open (char const*,int,int) ;
 int strerror (int ) ;
 int tr2_dst_trace_disable (struct tr2_dst*) ;
 scalar_t__ tr2_dst_want_warning () ;
 int tr2_sysenv_display_name (int ) ;
 int warning (char*,char const*,int ,int ) ;

__attribute__((used)) static int tr2_dst_try_path(struct tr2_dst *dst, const char *tgt_value)
{
 int fd = open(tgt_value, O_WRONLY | O_APPEND | O_CREAT, 0666);
 if (fd == -1) {
  if (tr2_dst_want_warning())
   warning("trace2: could not open '%s' for '%s' tracing: %s",
    tgt_value,
    tr2_sysenv_display_name(dst->sysenv_var),
    strerror(errno));

  tr2_dst_trace_disable(dst);
  return 0;
 }

 dst->fd = fd;
 dst->need_close = 1;
 dst->initialized = 1;

 return dst->fd;
}
