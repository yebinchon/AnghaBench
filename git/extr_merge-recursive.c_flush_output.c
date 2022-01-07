
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buf; scalar_t__ len; } ;
struct merge_options {int buffer_output; TYPE_1__ obuf; } ;


 int fputs (int ,int ) ;
 int stdout ;
 int strbuf_reset (TYPE_1__*) ;

__attribute__((used)) static void flush_output(struct merge_options *opt)
{
 if (opt->buffer_output < 2 && opt->obuf.len) {
  fputs(opt->obuf.buf, stdout);
  strbuf_reset(&opt->obuf);
 }
}
