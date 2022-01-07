
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* ne; int type; } ;


 int MAX_TYPE ;
 int best_d ;
 int best_t ;
 TYPE_1__* mem ;

void trie_rus_try (int root, int *s, int n) {
  int v = root;
  best_t = MAX_TYPE;

  while (n--) {
    if (!mem[v].ne[s[n]]) {
      break;
    }
    v = mem[v].ne[s[n]];
    if (mem[v].type) {
      if (mem[v].type <= best_t) {
        best_t = mem[v].type;
        best_d = n;
      }
    }
  }

  if (best_t & 1) {
    best_d++;
  }
}
