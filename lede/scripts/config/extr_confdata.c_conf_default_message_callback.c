
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int printf (char*) ;
 int vprintf (char const*,int ) ;

__attribute__((used)) static void conf_default_message_callback(const char *fmt, va_list ap)
{
 printf("#\n# ");
 vprintf(fmt, ap);
 printf("\n#\n");
}
