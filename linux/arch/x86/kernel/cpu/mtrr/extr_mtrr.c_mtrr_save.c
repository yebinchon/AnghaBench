
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* get ) (int,int *,int *,int *) ;} ;
struct TYPE_3__ {int ltype; int lsize; int lbase; } ;


 TYPE_2__* mtrr_if ;
 TYPE_1__* mtrr_value ;
 int num_var_ranges ;
 int stub1 (int,int *,int *,int *) ;

__attribute__((used)) static int mtrr_save(void)
{
 int i;

 for (i = 0; i < num_var_ranges; i++) {
  mtrr_if->get(i, &mtrr_value[i].lbase,
    &mtrr_value[i].lsize,
    &mtrr_value[i].ltype);
 }
 return 0;
}
