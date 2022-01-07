
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int testingT ;


 int printf (char*,...) ;
 int vprintf (char const*,int ) ;

void testingprivTLogvfFull(testingT *t, const char *file, int line, const char *format, va_list ap)
{

 printf("\t%s:%d: ", file, line);

 vprintf(format, ap);
 printf("\n");
}
