
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Q_aux_num ;
 scalar_t__ Q_limit ;
 scalar_t__ Q_order ;
 scalar_t__ Qfree ;
 scalar_t__ Qq ;
 scalar_t__ Qs ;
 scalar_t__ Qs0 ;
 scalar_t__ Qw ;
 int vkprintf (int,char*) ;

void clear_query_list (void) {
  vkprintf (3, "clearing query list\n");
  Qw = 0;
  Qfree = 0;
  Qs = Qs0 = 0;
  Qq = 0;
  Q_order = 0;
  Q_limit = 0;
  Q_aux_num = 0;
}
