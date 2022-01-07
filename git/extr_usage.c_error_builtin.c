
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int trace2_cmd_error_va (char const*,int ) ;
 int vreportf (char*,char const*,int ) ;

__attribute__((used)) static void error_builtin(const char *err, va_list params)
{




 trace2_cmd_error_va(err, params);

 vreportf("error: ", err, params);
}
