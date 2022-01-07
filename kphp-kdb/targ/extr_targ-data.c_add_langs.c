
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int user_id; struct user_langs* langs; } ;
typedef TYPE_1__ user_t ;
struct user_langs {int cur_langs; int tot_langs; int* L; } ;


 int MAX_USER_LANGS ;
 int MIN_USER_LANGS ;
 int add_user_lang (TYPE_1__*,int) ;
 int assert (int) ;
 int fprintf (int ,char*,...) ;
 int memcpy (struct user_langs*,struct user_langs*,int) ;
 int stderr ;
 int zfree (struct user_langs*,int) ;
 struct user_langs* zmalloc (int) ;

__attribute__((used)) static int add_langs (user_t *U, int List[], int len) {
  struct user_langs *L = U->langs;

  if (len < 0 || len > MAX_USER_LANGS) {
    return -1;
  }
  if (!len || (L && L->cur_langs >= MAX_USER_LANGS)) {
    return 0;
  }

  int i, j, c = 0;
  assert (List[0] >= 0);
  for (i = 1; i < len; i++) {
    if (List[i-1] >= List[i]) {
      fprintf (stderr, "add_langs: user_id=%d, len=%d,", U->user_id, len);
      int j;
      for (j = 0; j < len; j++) {
        fprintf (stderr, " %d", List[j]);
      }
      fprintf (stderr, ".\n");
    }
    assert (List[i-1] < List[i]);
  }

  if (L) {
    assert (L->cur_langs >= 0 && L->cur_langs <= L->tot_langs);
    i = j = 0;
    while (i < len && j < L->cur_langs) {
      if (List[i] < L->L[j]) { i++; }
      else if (List[i] > L->L[j]) { j++; }
      else { c++; i++; j++; }
    }
    int t = L->cur_langs + len - c, tt = L->tot_langs;
    if (t > tt) {
      while (t > tt) { tt <<= 1; }
      struct user_langs *LN = zmalloc (sizeof (struct user_langs) + 2 * tt);
      memcpy (LN, L, sizeof(struct user_langs) + 2 * L->cur_langs);
      zfree (L, sizeof (struct user_langs) + 2 * L->tot_langs);
      U->langs = L = LN;
      L->tot_langs = tt;
    }

    i = len-1;
    j = L->cur_langs-1;
    L->cur_langs = t;

    while (i >= 0 && j >= 0) {
      assert (t > 0);
      if (List[i] > L->L[j]) {
        L->L[--t] = List[i];
        add_user_lang (U, List[i--]);
      } else {
        if (List[i] == L->L[j]) {
          i--;
        }
        L->L[--t] = L->L[j--];
      }
    }
    while (i >= 0) {
      assert (t > 0);
      L->L[--t] = List[i];
      add_user_lang (U, List[i--]);
    }
    while (j >= 0) {
      assert (t > 0);
      L->L[--t] = L->L[j--];
    }
    assert (!t);
    return len - c;
  }

  int tt = MIN_USER_LANGS;
  while (tt < len) { tt <<= 1; }

  U->langs = L = zmalloc (sizeof (struct user_langs) + 2 * tt);
  L->cur_langs = len;
  L->tot_langs = tt;

  for (i = 0; i < len; i++) {
    L->L[i] = List[i];
    add_user_lang (U, List[i]);
  }

  return len;
}
