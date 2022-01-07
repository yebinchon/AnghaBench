
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_mf_clear_exceptions {int user_id; } ;


 int LEV_MF_CLEAR_EXCEPTIONS ;
 struct lev_mf_clear_exceptions* alloc_log_event (int ,int,int ) ;
 int clear_exceptions (struct lev_mf_clear_exceptions*) ;

int do_clear_exceptions (int uid) {
  struct lev_mf_clear_exceptions *E =
    alloc_log_event (LEV_MF_CLEAR_EXCEPTIONS, sizeof (struct lev_mf_clear_exceptions), 0);

  E->user_id = uid;

  return clear_exceptions (E);
}
