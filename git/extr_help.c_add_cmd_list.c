
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdnames {int cnt; int * names; int alloc; } ;


 int ALLOC_GROW (int *,int,int ) ;
 int FREE_AND_NULL (int *) ;

__attribute__((used)) static void add_cmd_list(struct cmdnames *cmds, struct cmdnames *old)
{
 int i;
 ALLOC_GROW(cmds->names, cmds->cnt + old->cnt, cmds->alloc);

 for (i = 0; i < old->cnt; i++)
  cmds->names[cmds->cnt++] = old->names[i];
 FREE_AND_NULL(old->names);
 old->cnt = 0;
}
