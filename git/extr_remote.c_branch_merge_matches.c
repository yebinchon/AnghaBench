
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct branch {int merge_nr; TYPE_1__** merge; } ;
struct TYPE_2__ {int src; } ;


 int refname_match (int ,char const*) ;

int branch_merge_matches(struct branch *branch,
                   int i,
                   const char *refname)
{
 if (!branch || i < 0 || i >= branch->merge_nr)
  return 0;
 return refname_match(branch->merge[i]->src, refname);
}
