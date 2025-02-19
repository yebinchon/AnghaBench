
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct lev_support_delete_answer {int user_id; } ;
typedef TYPE_5__* answers_list_ptr ;
typedef int answers_list ;
struct TYPE_13__ {int user_id; struct TYPE_13__* E; TYPE_4__* next; TYPE_2__* prev; } ;
struct TYPE_12__ {TYPE_3__* E; TYPE_2__* prev; } ;
struct TYPE_11__ {int user_id; } ;
struct TYPE_10__ {TYPE_1__* E; TYPE_4__* next; } ;
struct TYPE_9__ {int user_id; } ;


 int dl_free (TYPE_5__*,int) ;
 int fprintf (int ,char*,int,...) ;
 int get_lev_support_add_answer_size (TYPE_5__*) ;
 void** map_int_vptr_get (int *,int) ;
 int process_answer (TYPE_5__*,int) ;
 int stderr ;
 int user_id_to_answer ;
 int verbosity ;

int delete_answer (struct lev_support_delete_answer *E) {
  if (verbosity > 1) {
    fprintf (stderr, "Deleting answer for question %d\n", E->user_id);
  }

  void **cur_ = map_int_vptr_get (&user_id_to_answer, E->user_id);
  if (cur_ != ((void*)0)) {
    answers_list_ptr cur = *cur_;
    cur->next->prev = cur->prev;
    cur->prev->next = cur->next;
    fprintf (stderr, "%d %d %d\n", cur->prev->E->user_id, cur->E->user_id, cur->next->E->user_id);
    process_answer (cur, -1);
    dl_free (cur->E, get_lev_support_add_answer_size (cur->E));
    dl_free (cur, sizeof (answers_list));
  }

  return 1;
}
