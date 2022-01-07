
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_support_set_mark {int mark; } ;


 int LEV_SUPPORT_SET_MARK ;
 struct lev_support_set_mark* alloc_log_event (int ,int,int) ;
 int set_mark (struct lev_support_set_mark*) ;

int do_set_mark (int user_id, int mark) {
  struct lev_support_set_mark *E =
    alloc_log_event (LEV_SUPPORT_SET_MARK, sizeof (struct lev_support_set_mark), user_id);

  E->mark = mark;

  return set_mark (E);
}
