
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grep_opt {int * colors; int (* output ) (struct grep_opt*,char*,int) ;scalar_t__ null_following_name; } ;


 size_t GREP_COLOR_SEP ;
 int output_color (struct grep_opt*,char*,int,int ) ;
 int stub1 (struct grep_opt*,char*,int) ;

__attribute__((used)) static void output_sep(struct grep_opt *opt, char sign)
{
 if (opt->null_following_name)
  opt->output(opt, "\0", 1);
 else
  output_color(opt, &sign, 1, opt->colors[GREP_COLOR_SEP]);
}
