
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rev_info {scalar_t__ saved_parents_slab; } ;


 int clear_saved_parents (scalar_t__) ;

__attribute__((used)) static void free_saved_parents(struct rev_info *revs)
{
 if (revs->saved_parents_slab)
  clear_saved_parents(revs->saved_parents_slab);
}
