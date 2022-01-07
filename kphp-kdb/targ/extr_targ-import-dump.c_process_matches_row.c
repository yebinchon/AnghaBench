
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_proposal {int len; int text; scalar_t__ user_id; int type; } ;


 scalar_t__* I ;
 int* L ;
 int LEV_TARG_PROPOSAL ;
 char** S ;
 int adj_rec ;
 int fits (scalar_t__) ;
 size_t mp_category ;
 size_t mp_id ;
 size_t mp_question ;
 int strcpy (int ,char*) ;
 scalar_t__ user_id ;
 struct lev_proposal* write_alloc (int) ;

void process_matches_row (void) {
  struct lev_proposal *E;
  int len = L[mp_question];
  char *str = S[mp_question];
  int i;
  user_id = I[mp_id];

  if (!fits(user_id) || I[mp_category] || !len || len >= 1024) {
    return;
  }

  E = write_alloc (11 + len);
  E->type = LEV_TARG_PROPOSAL;
  E->user_id = user_id;
  E->len = len;

  for (i = 0; i < len; i++) {
    if ((unsigned char) str[i] < ' ') {
      str[i] = ' ';
    }
  }

  strcpy (E->text, str);
  adj_rec++;
}
