
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int key_words ;
 int* map_int_int_get (int *,int) ;
 int q_cnt ;
 int * set_int_get (int *,int) ;
 double sqrt (int) ;

double word_weight (int word) {
  int *t = map_int_int_get (&q_cnt, word), cnt = 0;

  if (t != ((void*)0)) {
    cnt = *t;
  }

  if (cnt <= 2) {
    return 0.0;
  }

  if (set_int_get (&key_words, word) != ((void*)0)) {
    return 0.1;
  }

  return 1.0 / sqrt (cnt + 100);
}
