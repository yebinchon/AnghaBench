
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int dummy; } ;


 int index_name_stage_pos (struct index_state const*,char const*,int,int ) ;

int index_name_pos(const struct index_state *istate, const char *name, int namelen)
{
 return index_name_stage_pos(istate, name, namelen, 0);
}
