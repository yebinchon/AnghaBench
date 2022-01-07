
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ll ;


 int HASH_MUL ;
 scalar_t__ KLUDGE ;
 scalar_t__ debug ;
 int debugp (char*,int,int,long long) ;
 int fprintf (int ,char*,int,int) ;
 int stderr ;
 int* words ;
 int words_len ;

void add_kludge (int type, int num) {
  if (debug) {
    fprintf (stderr, "KLUDGE %d %d\n", type, num);
  }
  debugp ("KLUDGE %d %d | %lld\n", type, num, (long long)(ll)((ll)(KLUDGE + type) * HASH_MUL + num));
  words[words_len++] = (ll)(KLUDGE + type) * HASH_MUL + num;
}
