
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdnames {scalar_t__ cnt; struct cmdname** names; int alloc; } ;
struct cmdname {int len; } ;


 int ALLOC_GROW (struct cmdname**,scalar_t__,int ) ;
 int FLEX_ALLOC_MEM (struct cmdname*,char const*,char const*,int) ;

void add_cmdname(struct cmdnames *cmds, const char *name, int len)
{
 struct cmdname *ent;
 FLEX_ALLOC_MEM(ent, name, name, len);
 ent->len = len;

 ALLOC_GROW(cmds->names, cmds->cnt + 1, cmds->alloc);
 cmds->names[cmds->cnt++] = ent;
}
