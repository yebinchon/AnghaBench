
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff_options {int dummy; } ;


 int DIFF_SYMBOL_SUBMODULE_PIPETHROUGH ;
 int emit_diff_symbol (struct diff_options*,int ,char const*,int,int ) ;

void diff_emit_submodule_pipethrough(struct diff_options *o,
         const char *line, int len)
{
 emit_diff_symbol(o, DIFF_SYMBOL_SUBMODULE_PIPETHROUGH, line, len, 0);
}
