
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int Out; } ;


 scalar_t__ write_out (int *,void*,int) ;

int write_lcb (struct connection *c, unsigned long long l) {
  int res = 0;

  if (l <= 250) {
    res += write_out (&c->Out, (void *)&l, 1);
  } else
  if (l <= 0xffff) {
    res += write_out (&c->Out, "\xfc", 1);
    res += write_out (&c->Out, (void *)&l, 2);
  } else
  if (l <= 0xffffff) {
    res += write_out (&c->Out, "\xfd", 1);
    res += write_out (&c->Out, (void *)&l, 3);
  } else {
    res += write_out (&c->Out, "\xfe", 1);
    res += write_out (&c->Out, (void *)&l, 8);
  }
  return res;
}
