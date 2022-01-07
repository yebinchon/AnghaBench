
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtrr_iter {int mtrr_disabled; int mtrr_state; } ;


 int mtrr_is_enabled (int ) ;
 int mtrr_lookup_fixed_start (struct mtrr_iter*) ;
 int mtrr_lookup_var_start (struct mtrr_iter*) ;

__attribute__((used)) static void mtrr_lookup_start(struct mtrr_iter *iter)
{
 if (!mtrr_is_enabled(iter->mtrr_state)) {
  iter->mtrr_disabled = 1;
  return;
 }

 if (!mtrr_lookup_fixed_start(iter))
  mtrr_lookup_var_start(iter);
}
