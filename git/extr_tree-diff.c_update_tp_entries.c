
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; } ;
struct tree_desc {TYPE_1__ entry; } ;


 int S_IFXMIN_NEQ ;
 int update_tree_entry (struct tree_desc*) ;

__attribute__((used)) static inline void update_tp_entries(struct tree_desc *tp, int nparent)
{
 int i;
 for (i = 0; i < nparent; ++i)
  if (!(tp[i].entry.mode & S_IFXMIN_NEQ))
   update_tree_entry(&tp[i]);
}
