
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff_options {int dummy; } ;
typedef int mmfile_t ;


 int DIFF_SYMBOL_BINARY_DIFF_HEADER ;
 int emit_binary_diff_body (struct diff_options*,int *,int *) ;
 int emit_diff_symbol (struct diff_options*,int ,int *,int ,int ) ;

__attribute__((used)) static void emit_binary_diff(struct diff_options *o,
        mmfile_t *one, mmfile_t *two)
{
 emit_diff_symbol(o, DIFF_SYMBOL_BINARY_DIFF_HEADER, ((void*)0), 0, 0);
 emit_binary_diff_body(o, one, two);
 emit_binary_diff_body(o, two, one);
}
