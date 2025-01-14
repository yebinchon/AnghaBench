
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct cmdname_help {scalar_t__ name; } ;
struct category_description {char* desc; int category; } ;


 int QSORT (struct cmdname_help*,int,int ) ;
 char* _ (char const*) ;
 int cmd_name_cmp ;
 int extract_cmds (struct cmdname_help**,int ) ;
 int free (struct cmdname_help*) ;
 int print_command_list (struct cmdname_help*,int ,int) ;
 int printf (char*,char*) ;
 int strlen (scalar_t__) ;

__attribute__((used)) static void print_cmd_by_category(const struct category_description *catdesc,
      int *longest_p)
{
 struct cmdname_help *cmds;
 int longest = 0;
 int i, nr = 0;
 uint32_t mask = 0;

 for (i = 0; catdesc[i].desc; i++)
  mask |= catdesc[i].category;

 extract_cmds(&cmds, mask);

 for (i = 0; cmds[i].name; i++, nr++) {
  if (longest < strlen(cmds[i].name))
   longest = strlen(cmds[i].name);
 }
 QSORT(cmds, nr, cmd_name_cmp);

 for (i = 0; catdesc[i].desc; i++) {
  uint32_t mask = catdesc[i].category;
  const char *desc = catdesc[i].desc;

  printf("\n%s\n", _(desc));
  print_command_list(cmds, mask, longest);
 }
 free(cmds);
 if (longest_p)
  *longest_p = longest;
}
