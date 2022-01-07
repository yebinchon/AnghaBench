
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len; int str; } ;
typedef TYPE_1__ word_t ;


 int memcmp (int ,int ,int) ;

__attribute__((used)) static inline int word_cmp (word_t *a, word_t *b) {
  int al = a->len, bl = b->len;
  int x = memcmp (a->str, b->str, al < bl ? al : bl);
  return x ? x : al - bl;
}
