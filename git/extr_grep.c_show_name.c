
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grep_opt {scalar_t__ null_following_name; int (* output ) (struct grep_opt*,char*,int) ;int * colors; } ;


 size_t GREP_COLOR_FILENAME ;
 int output_color (struct grep_opt*,char const*,int ,int ) ;
 int strlen (char const*) ;
 int stub1 (struct grep_opt*,char*,int) ;

__attribute__((used)) static void show_name(struct grep_opt *opt, const char *name)
{
 output_color(opt, name, strlen(name), opt->colors[GREP_COLOR_FILENAME]);
 opt->output(opt, opt->null_following_name ? "\0" : "\n", 1);
}
