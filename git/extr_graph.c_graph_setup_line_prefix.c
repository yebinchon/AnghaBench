
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff_options {scalar_t__ output_prefix; } ;


 struct diff_options* default_diffopt ;
 scalar_t__ diff_output_prefix_callback ;

void graph_setup_line_prefix(struct diff_options *diffopt)
{
 default_diffopt = diffopt;


 if (diffopt && !diffopt->output_prefix)
  diffopt->output_prefix = diff_output_prefix_callback;
}
