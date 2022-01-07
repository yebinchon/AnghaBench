
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,char const*,...) ;
 char last_non_space_char (char const*) ;
 char** separators ;
 scalar_t__ strchr (char**,char) ;

__attribute__((used)) static void print_tok_val(FILE *outfile, const char *tok, const char *val)
{
 char c;

 if (!tok) {
  fprintf(outfile, "%s\n", val);
  return;
 }

 c = last_non_space_char(tok);
 if (!c)
  return;
 if (strchr(separators, c))
  fprintf(outfile, "%s%s\n", tok, val);
 else
  fprintf(outfile, "%s%c %s\n", tok, separators[0], val);
}
