
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_antispam_del_pattern {int dummy; } ;
typedef int lev_antispam_del_pattern_t ;


 int LEV_ANTISPAM_DEL_PATTERN ;
 int * alloc_log_event (int ,int,int) ;
 int del_pattern (int *) ;

bool do_del_pattern (int id) {
  lev_antispam_del_pattern_t *E =
    alloc_log_event (LEV_ANTISPAM_DEL_PATTERN, sizeof (struct lev_antispam_del_pattern), id);
  return del_pattern (E);
}
