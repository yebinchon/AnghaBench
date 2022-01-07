
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ll ;


 int HASH_MUL ;
 scalar_t__ debug ;
 int debugp (char*,char*,long long) ;
 int fprintf (int ,char*,char*) ;
 int put_string_utf8 (int*,char*) ;
 int stderr ;
 int* words ;
 int words_len ;

void add_word (int *v) {


  char tmp[10000];
  put_string_utf8 (v, tmp);

  if (debug) {
    fprintf (stderr, "WORD %s\n", tmp);
  }

  ll res = 0;
  while (*v) {
    res = (res * HASH_MUL) + *v++;
  }

  debugp ("WORD %s | %lld\n", tmp, (long long)((ll)res));

  words[words_len++] = res;
}
