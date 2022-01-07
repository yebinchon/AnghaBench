
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* ne; int type; } ;


 int assert (int) ;
 int conv_rus_win1251 (char const) ;
 TYPE_1__* mem ;
 int mn ;
 int strlen (char const*) ;

void trie_rus_add (int st, const char *s, int t) {
  int v = st;
  int n = strlen (s);

  while (n--) {
    int c = conv_rus_win1251(s[n]);
    if (!mem[v].ne[c]) {
      mem[v].ne[c] = mn++;
    }
    v = mem[v].ne[c];
  }

  assert (mem[v].type == 0);
  mem[v].type = t;
}
