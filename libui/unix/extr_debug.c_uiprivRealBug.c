
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int G_BREAKPOINT () ;
 int g_critical (char*,char*,char*) ;
 char* g_strdup_printf (char*,char const*,char const*,char const*,char const*) ;
 char* g_strdup_vprintf (char const*,int ) ;

void uiprivRealBug(const char *file, const char *line, const char *func, const char *prefix, const char *format, va_list ap)
{
 char *a, *b;

 a = g_strdup_printf("[libui] %s:%s:%s() %s", file, line, func, prefix);
 b = g_strdup_vprintf(format, ap);
 g_critical("%s%s", a, b);
 G_BREAKPOINT();
}
