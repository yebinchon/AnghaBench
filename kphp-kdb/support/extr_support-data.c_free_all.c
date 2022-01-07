
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* answers_list_ptr ;
typedef int answers_list ;
struct TYPE_6__ {struct TYPE_6__* next; struct TYPE_6__* prev; struct TYPE_6__* E; } ;


 TYPE_1__* answers ;
 scalar_t__ answers_cnt ;
 int assert (int) ;
 int dl_free (TYPE_1__*,int) ;
 scalar_t__ dl_get_memory_used () ;
 int fprintf (int ,char*,long) ;
 int get_lev_support_add_answer_size (TYPE_1__*) ;
 int key_words ;
 int map_int_int_free (int *) ;
 scalar_t__ map_int_int_used (int *) ;
 int map_int_set_int_free (int *) ;
 scalar_t__ map_int_set_int_used (int *) ;
 int map_int_vptr_free (int *) ;
 scalar_t__ map_int_vptr_used (int *) ;
 int process_answer (TYPE_1__*,int) ;
 int q_cnt ;
 int set_int_free (int *) ;
 int stderr ;
 int user_id_to_answer ;
 scalar_t__ verbosity ;
 int word_to_answers ;

void free_all (void) {
  if (verbosity) {
    while (answers_cnt > 0) {
      assert (answers->next != answers);
      process_answer (answers->next, -1);

      answers_list_ptr next = answers->next;
      dl_free (next->E, get_lev_support_add_answer_size (next->E));
      answers->next = next->next;
      answers->next->prev = answers;

      dl_free (next, sizeof (answers_list));
    }
    assert (answers->next == answers);

    assert (map_int_int_used (&q_cnt) == 0);
    assert (map_int_vptr_used (&user_id_to_answer) == 0);
    assert (map_int_set_int_used (&word_to_answers) == 0);

    set_int_free (&key_words);
    map_int_int_free (&q_cnt);
    map_int_vptr_free (&user_id_to_answer);
    map_int_set_int_free (&word_to_answers);

    dl_free (answers, sizeof (answers_list));

    fprintf (stderr, "Memory left: %ld\n", (long)dl_get_memory_used());
    assert (dl_get_memory_used() == 0);
  }
}
