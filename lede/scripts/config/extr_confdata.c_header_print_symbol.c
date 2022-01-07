
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int type; char* name; } ;
typedef int FILE ;


 char* CONFIG_ ;





 int fprintf (int *,char*,char*,char*,char const*,...) ;

__attribute__((used)) static void
header_print_symbol(FILE *fp, struct symbol *sym, const char *value, void *arg)
{

 switch (sym->type) {
 case 132:
 case 128: {
  const char *suffix = "";

  switch (*value) {
  case 'n':
   break;
  case 'm':
   suffix = "_MODULE";

  default:
   fprintf(fp, "#define %s%s%s 1\n",
       CONFIG_, sym->name, suffix);
  }
  break;
 }
 case 131: {
  const char *prefix = "";

  if (value[0] != '0' || (value[1] != 'x' && value[1] != 'X'))
   prefix = "0x";
  fprintf(fp, "#define %s%s %s%s\n",
      CONFIG_, sym->name, prefix, value);
  break;
 }
 case 129:
 case 130:
  fprintf(fp, "#define %s%s %s\n",
      CONFIG_, sym->name, value);
  break;
 default:
  break;
 }

}
