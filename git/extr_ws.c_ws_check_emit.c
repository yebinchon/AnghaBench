
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int ws_check_emit_1 (char const*,int,unsigned int,int *,char const*,char const*,char const*) ;

void ws_check_emit(const char *line, int len, unsigned ws_rule,
     FILE *stream, const char *set,
     const char *reset, const char *ws)
{
 (void)ws_check_emit_1(line, len, ws_rule, stream, set, reset, ws);
}
