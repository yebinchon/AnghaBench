
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct cmdname_help {int category; int * name; } ;


 int ALLOC_ARRAY (struct cmdname_help*,int) ;
 int ARRAY_SIZE (struct cmdname_help*) ;
 int BUG (char*) ;
 struct cmdname_help* command_list ;
 int * drop_prefix (int *,int) ;

__attribute__((used)) static void extract_cmds(struct cmdname_help **p_cmds, uint32_t mask)
{
 int i, nr = 0;
 struct cmdname_help *cmds;

 if (ARRAY_SIZE(command_list) == 0)
  BUG("empty command_list[] is a sign of broken generate-cmdlist.sh");

 ALLOC_ARRAY(cmds, ARRAY_SIZE(command_list) + 1);

 for (i = 0; i < ARRAY_SIZE(command_list); i++) {
  const struct cmdname_help *cmd = command_list + i;

  if (!(cmd->category & mask))
   continue;

  cmds[nr] = *cmd;
  cmds[nr].name = drop_prefix(cmd->name, cmd->category);

  nr++;
 }
 cmds[nr].name = ((void*)0);
 *p_cmds = cmds;
}
