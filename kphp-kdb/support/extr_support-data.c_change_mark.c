
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* answers_list_ptr ;
struct TYPE_5__ {TYPE_1__* E; } ;
struct TYPE_4__ {int mark; } ;


 void** map_int_vptr_get (int *,int) ;
 int process_answer (TYPE_2__*,int) ;
 int user_id_to_answer ;

int change_mark (int user_id, int mark) {
  void **cur_ = map_int_vptr_get (&user_id_to_answer, user_id);
  if (cur_ != ((void*)0)) {
    answers_list_ptr cur = *cur_;
    if (cur->E->mark != mark) {
      process_answer (cur, -1);
      cur->E->mark = mark;
      process_answer (cur, 1);
    }
  }

  return 1;
}
