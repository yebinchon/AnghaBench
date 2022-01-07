
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int user ;
typedef int entry_t ;
typedef int black_list ;
struct TYPE_14__ {int cnt; } ;
struct TYPE_13__ {int size; } ;
struct TYPE_11__ {int cnt; } ;
struct TYPE_12__ {int * next; TYPE_1__ b; } ;


 int assert (int) ;
 TYPE_2__* bl_head ;
 int black_list_do_delete (TYPE_2__*) ;
 TYPE_2__* buff ;
 int fprintf (int ,char*,scalar_t__) ;
 int free_header (int *) ;
 scalar_t__ get_memory_used () ;
 TYPE_7__ global_bayes ;
 int header ;
 scalar_t__ htbl_get_memory () ;
 scalar_t__ index_mode ;
 int ltbl_free (TYPE_3__*) ;
 int max_words ;
 TYPE_2__* new_buff ;
 int qfree (TYPE_2__*,int) ;
 int qhtbl_free (int *) ;
 int stderr ;
 int user_LRU_unload () ;
 TYPE_3__ user_table ;
 TYPE_2__* users ;
 scalar_t__ verbosity ;

void free_all (void) {
  if (verbosity) {
    while (user_LRU_unload() != -1) {
    }

    qhtbl_free (&global_bayes.cnt);
    int i;
    for (i = 0; i < user_table.size; i++) {
      qhtbl_free (&users[i].b.cnt);
    }

    if (index_mode) {
      qfree (buff, max_words * sizeof (entry_t));
      qfree (new_buff, 4000000 * sizeof (entry_t));
    }

    while (bl_head->next != ((void*)0)) {
      black_list_do_delete (bl_head);
    }
    qfree (bl_head, sizeof (black_list));

    qfree (users, sizeof (user) * user_table.size);

    ltbl_free (&user_table);
    free_header (&header);

    fprintf (stderr, "Memory left: %ld\n", get_memory_used() - htbl_get_memory());
    assert (get_memory_used() - htbl_get_memory() == 0);
  }
}
