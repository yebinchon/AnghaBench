
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ltype; scalar_t__ lsize; int lbase; } ;


 TYPE_1__* mtrr_value ;
 int num_var_ranges ;
 int set_mtrr (int,int ,scalar_t__,int ) ;

__attribute__((used)) static void mtrr_restore(void)
{
 int i;

 for (i = 0; i < num_var_ranges; i++) {
  if (mtrr_value[i].lsize) {
   set_mtrr(i, mtrr_value[i].lbase,
        mtrr_value[i].lsize,
        mtrr_value[i].ltype);
  }
 }
}
