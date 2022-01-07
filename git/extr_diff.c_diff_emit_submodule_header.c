
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff_options {int dummy; } ;


 int DIFF_SYMBOL_SUBMODULE_HEADER ;
 int emit_diff_symbol (struct diff_options*,int ,char const*,int ,int ) ;
 int strlen (char const*) ;

void diff_emit_submodule_header(struct diff_options *o, const char *header)
{
 emit_diff_symbol(o, DIFF_SYMBOL_SUBMODULE_HEADER,
    header, strlen(header), 0);
}
