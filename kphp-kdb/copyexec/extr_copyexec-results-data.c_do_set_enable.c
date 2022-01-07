
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_copyexec_result_enable {unsigned long long random_tag; } ;


 int LEV_COPYEXEC_RESULT_DISABLE ;
 int LEV_COPYEXEC_RESULT_ENABLE ;
 struct lev_copyexec_result_enable* alloc_log_event (int ,int,int ) ;
 int set_enable (unsigned long long,int) ;

int do_set_enable (unsigned long long random_tag, int enable) {
  int r = set_enable (random_tag, enable);
  if (!r) {
    struct lev_copyexec_result_enable *E = alloc_log_event (enable ? LEV_COPYEXEC_RESULT_ENABLE : LEV_COPYEXEC_RESULT_DISABLE, sizeof (*E), 0);
    E->random_tag = random_tag;
  }
  return r;
}
