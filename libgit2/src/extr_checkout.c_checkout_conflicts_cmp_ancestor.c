
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ancestor; } ;
typedef TYPE_1__ checkout_conflictdata ;


 int checkout_conflicts_cmp_entry (char const*,int ) ;

__attribute__((used)) static int checkout_conflicts_cmp_ancestor(const void *p, const void *c)
{
 const char *path = p;
 const checkout_conflictdata *conflict = c;

 if (!conflict->ancestor)
  return 1;

 return checkout_conflicts_cmp_entry(path, conflict->ancestor);
}
