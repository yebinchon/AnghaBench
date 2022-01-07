
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_sym ;
typedef int mrb_state ;


 int check_cv_name_str (int *,int ) ;
 int mrb_sym2str (int *,int ) ;

__attribute__((used)) static void
check_cv_name_sym(mrb_state *mrb, mrb_sym id)
{
  check_cv_name_str(mrb, mrb_sym2str(mrb, id));
}
