
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int d; int sums; int used; int code; int mul1; int mul0; } ;
typedef TYPE_1__ perfect_hash ;


 int WRITE_INT (unsigned char*,int ) ;
 int get_code_len (int ) ;
 int get_sums_len (int ) ;
 int get_used_len (int ) ;
 int memcpy (unsigned char*,int ,int ) ;

int ph_encode (perfect_hash *h, unsigned char *s) {
  unsigned char *st = s;

  WRITE_INT(s, h->d);
  WRITE_INT(s, h->mul0);
  WRITE_INT(s, h->mul1);

  memcpy (s, h->code, get_code_len (h->d));
  s += get_code_len (h->d);
  memcpy (s, h->used, get_used_len (h->d));
  s += get_used_len (h->d);
  memcpy (s, h->sums, get_sums_len (h->d));
  s += get_sums_len (h->d);

  return s - st;
}
