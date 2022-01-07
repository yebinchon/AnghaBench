
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct branch {int merge; } ;



int branch_has_merge_config(struct branch *branch)
{
 return branch && !!branch->merge;
}
