
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int fmtbuf ;
typedef int FILE ;


 char* _getprogname () ;
 int fprintf (int *,char*,char*,char const*,char*) ;
 int vsnprintf (char*,int,char const*,int ) ;

__attribute__((used)) static void pr_do(FILE *stream,
                  const char *label,
                  const char *fmt,
                  va_list ap) {
  char fmtbuf[1024];
  vsnprintf(fmtbuf, sizeof(fmtbuf), fmt, ap);
  fprintf(stream, "%s:%s: %s\n", _getprogname(), label, fmtbuf);
}
