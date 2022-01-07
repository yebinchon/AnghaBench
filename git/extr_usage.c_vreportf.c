
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int msg ;


 int fprintf (int ,char*,char const*,char*) ;
 scalar_t__ iscntrl (char) ;
 int stderr ;
 int vsnprintf (char*,int,char const*,int ) ;

void vreportf(const char *prefix, const char *err, va_list params)
{
 char msg[4096];
 char *p;

 vsnprintf(msg, sizeof(msg), err, params);
 for (p = msg; *p; p++) {
  if (iscntrl(*p) && *p != '\t' && *p != '\n')
   *p = '?';
 }
 fprintf(stderr, "%s%s\n", prefix, msg);
}
