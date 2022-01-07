
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct cmdname_help {char* name; int category; int help; } ;


 int _ (int ) ;
 int mput_char (char,int) ;
 int printf (char*,char*) ;
 int puts (int ) ;
 size_t strlen (char*) ;

__attribute__((used)) static void print_command_list(const struct cmdname_help *cmds,
          uint32_t mask, int longest)
{
 int i;

 for (i = 0; cmds[i].name; i++) {
  if (cmds[i].category & mask) {
   size_t len = strlen(cmds[i].name);
   printf("   %s   ", cmds[i].name);
   if (longest > len)
    mput_char(' ', longest - len);
   puts(_(cmds[i].help));
  }
 }
}
