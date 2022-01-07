
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff_options {int file; int line_prefix_length; int line_prefix; } ;


 int fwrite (int ,int,int ,int ) ;

__attribute__((used)) static void graph_show_line_prefix(const struct diff_options *diffopt)
{
 if (!diffopt || !diffopt->line_prefix)
  return;

 fwrite(diffopt->line_prefix,
        sizeof(char),
        diffopt->line_prefix_length,
        diffopt->file);
}
