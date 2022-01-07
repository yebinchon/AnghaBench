
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned int num; TYPE_1__* flag; int mask; } ;
struct TYPE_4__ {int mask; } ;


 unsigned int ARRAY_SIZE (TYPE_2__*) ;
 TYPE_2__* pg_level ;

__attribute__((used)) static void build_pgtable_complete_mask(void)
{
 unsigned int i, j;

 for (i = 0; i < ARRAY_SIZE(pg_level); i++)
  if (pg_level[i].flag)
   for (j = 0; j < pg_level[i].num; j++)
    pg_level[i].mask |= pg_level[i].flag[j].mask;
}
