
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grep_opt {int (* output ) (struct grep_opt*,void const*,size_t) ;int color; } ;


 char const* GIT_COLOR_RESET ;
 int strlen (char const*) ;
 int stub1 (struct grep_opt*,char const*,int ) ;
 int stub2 (struct grep_opt*,void const*,size_t) ;
 int stub3 (struct grep_opt*,char const*,int ) ;
 int stub4 (struct grep_opt*,void const*,size_t) ;
 scalar_t__ want_color (int ) ;

__attribute__((used)) static void output_color(struct grep_opt *opt, const void *data, size_t size,
    const char *color)
{
 if (want_color(opt->color) && color && color[0]) {
  opt->output(opt, color, strlen(color));
  opt->output(opt, data, size);
  opt->output(opt, GIT_COLOR_RESET, strlen(GIT_COLOR_RESET));
 } else
  opt->output(opt, data, size);
}
