
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct conn_target {int dummy; } ;


 int Targets ;
 struct conn_target* create_target (struct conn_target*,int *) ;

int get_target_impl (struct conn_target *ct) {

  struct conn_target *res = create_target (ct, ((void*)0));
  int res_id = (int)(res - Targets);
  return res_id;
}
