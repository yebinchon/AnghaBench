
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* code; int* used; int* sums; int d; int mul1; int mul0; } ;
typedef TYPE_1__ perfect_hash ;


 int READ_INT (unsigned char*,int ) ;
 int get_code_len (int ) ;
 int get_sums_len (int ) ;
 int get_used_len (int ) ;

int ph_decode (perfect_hash *h, unsigned char *s) {
  unsigned char *st = s;

  READ_INT(s, h->d);
  READ_INT(s, h->mul0);
  READ_INT(s, h->mul1);

  h->code = s;
  s += get_code_len (h->d);
  h->used = (int *)s;
  s += get_used_len (h->d);
  h->sums = (int *)s;
  s += get_sums_len (h->d);

  return s - st;
}
