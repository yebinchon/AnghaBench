
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* ne; scalar_t__ type; } ;


 scalar_t__ MAX_TYPE ;
 int best_d ;
 scalar_t__ best_t ;
 TYPE_1__* mem ;

void trie_eng_try (int root, int *s, int n) {
  int v = root;
  best_t = MAX_TYPE;

  while (n--) {
    if (!mem[v].ne[s[n]]) {
      break;
    }
    v = mem[v].ne[s[n]];
    if (mem[v].type) {
      best_t = mem[v].type;
      best_d = n;
    }
  }
}
