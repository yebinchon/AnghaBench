
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ws_check_emit_1 (char const*,int,unsigned int,int *,int *,int *,int *) ;

unsigned ws_check(const char *line, int len, unsigned ws_rule)
{
 return ws_check_emit_1(line, len, ws_rule, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
}
