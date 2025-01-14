
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct lev_support_add_answer {int user_id; int mark; char* question_with_answer; } ;
typedef int set_int ;
typedef TYPE_1__* answers_list_ptr ;
struct TYPE_4__ {int q_hashes_len; int* q_hashes; struct lev_support_add_answer* E; } ;


 int answers_cnt ;
 int assert (int) ;
 int* buf ;
 int dl_free (int*,int) ;
 int* dl_malloc (int) ;
 int* map_int_int_add (int *,int) ;
 int map_int_int_del (int *,int) ;
 int * map_int_set_int_add (int *,int) ;
 int map_int_set_int_del (int *,int) ;
 TYPE_1__** map_int_vptr_add (int *,int) ;
 int map_int_vptr_del (int *,int) ;
 int memcpy (int*,int*,int) ;
 int q_cnt ;
 int set_int_add (int *,int) ;
 int set_int_del (int *,int) ;
 int set_int_free (int *) ;
 int set_int_init (int *) ;
 scalar_t__ set_int_used (int *) ;
 int* split (int*,int*,int ) ;
 int user_id_to_answer ;
 int word_to_answers ;

void process_answer (answers_list_ptr answer, int add) {
  struct lev_support_add_answer *E = answer->E;
  int user_id = E->user_id;

  assert (add == -1 || add == 1);

  if (add == 1) {
    *map_int_vptr_add (&user_id_to_answer, user_id) = answer;
  } else {
    map_int_vptr_del (&user_id_to_answer, user_id);
  }

  answers_cnt += add;

  int cnt = add * (2 * E->mark + 1);
  if (E->mark < 0) {
    cnt = add;
  }
  cnt = add;

  if (add == 1) {
    char *a = E->question_with_answer;
    while (*a != '\t') {
      a++;
    }
    memcpy (buf, E->question_with_answer, a - E->question_with_answer);
    buf[a - E->question_with_answer] = 0;

    int *vq = split (buf, &answer->q_hashes_len, 0);
    int size = sizeof (int) * (answer->q_hashes_len + 1);
    answer->q_hashes = dl_malloc (size);
    memcpy (answer->q_hashes, vq, size);
  }

  int *vq = answer->q_hashes;

  int i;
  for (i = 0; vq[i]; i++) {
    int *t = map_int_int_add (&q_cnt, vq[i]);
    set_int *s = map_int_set_int_add (&word_to_answers, vq[i]);
    if (*t == 0) {
      set_int_init (s);
    }

    if (add == -1) {
      int old_used = set_int_used (s);
      set_int_del (s, user_id);
      assert (set_int_used (s) == old_used - 1 && old_used > 0);
    } else {
      int old_used = set_int_used (s);
      set_int_add (s, user_id);
      assert (set_int_used (s) == old_used + 1);
    }

    *t += cnt;
    assert (*t >= 0);

    if (*t == 0) {
      assert (set_int_used (s) == 0);
      set_int_free (s);
      map_int_set_int_del (&word_to_answers, vq[i]);
    }
    if (*t == 0) {
      map_int_int_del (&q_cnt, vq[i]);
    }
  }

  if (add == -1) {
    int size = sizeof (int) * (answer->q_hashes_len + 1);
    dl_free (answer->q_hashes, size);
  }
}
