
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_support_delete_answer {int dummy; } ;


 int LEV_SUPPORT_DELETE_ANSWER ;
 struct lev_support_delete_answer* alloc_log_event (int ,int,int) ;
 int delete_answer (struct lev_support_delete_answer*) ;

int do_delete_answer (int user_id) {
  struct lev_support_delete_answer *E =
    alloc_log_event (LEV_SUPPORT_DELETE_ANSWER, sizeof (struct lev_support_delete_answer), user_id);

  return delete_answer (E);
}
