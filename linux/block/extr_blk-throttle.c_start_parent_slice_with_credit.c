
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct throtl_grp {int * slice_start; } ;


 scalar_t__ throtl_slice_used (struct throtl_grp*,int) ;
 int throtl_start_new_slice_with_credit (struct throtl_grp*,int,int ) ;

__attribute__((used)) static void start_parent_slice_with_credit(struct throtl_grp *child_tg,
     struct throtl_grp *parent_tg, bool rw)
{
 if (throtl_slice_used(parent_tg, rw)) {
  throtl_start_new_slice_with_credit(parent_tg, rw,
    child_tg->slice_start[rw]);
 }

}
