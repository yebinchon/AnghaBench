
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emit_callback {unsigned int ws_rule; int opt; } ;


 int DIFF_SYMBOL_MINUS ;
 unsigned int WSEH_OLD ;
 int emit_diff_symbol (int ,int ,char const*,int,unsigned int) ;

__attribute__((used)) static void emit_del_line(struct emit_callback *ecbdata,
     const char *line, int len)
{
 unsigned flags = WSEH_OLD | ecbdata->ws_rule;
 emit_diff_symbol(ecbdata->opt, DIFF_SYMBOL_MINUS, line, len, flags);
}
