
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int _TRUNCATE ;
 int _vscprintf (char const*,int ) ;
 int _vsnprintf (char*,size_t,char const*,int ) ;
 int _vsnprintf_s (char*,size_t,int ,char const*,int ) ;
 int vsnprintf (char*,size_t,char const*,int ) ;

int p_vsnprintf(char *buffer, size_t count, const char *format, va_list argptr)
{
 return vsnprintf(buffer, count, format, argptr);

}
