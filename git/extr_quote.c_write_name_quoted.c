
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fputc (int,int *) ;
 int fputs (char const*,int *) ;
 int quote_c_style (char const*,int *,int *,int ) ;

void write_name_quoted(const char *name, FILE *fp, int terminator)
{
 if (terminator) {
  quote_c_style(name, ((void*)0), fp, 0);
 } else {
  fputs(name, fp);
 }
 fputc(terminator, fp);
}
