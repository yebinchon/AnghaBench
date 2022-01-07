
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int vreportf (char*,char const*,int ) ;

__attribute__((used)) static void fake_fatal(const char *err, va_list params)
{
 vreportf("fatal: ", err, params);
}
