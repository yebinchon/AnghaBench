
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtrr_iter {scalar_t__ fixed; } ;


 int mtrr_lookup_fixed_next (struct mtrr_iter*) ;
 int mtrr_lookup_var_next (struct mtrr_iter*) ;

__attribute__((used)) static void mtrr_lookup_next(struct mtrr_iter *iter)
{
 if (iter->fixed)
  mtrr_lookup_fixed_next(iter);
 else
  mtrr_lookup_var_next(iter);
}
