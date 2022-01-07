
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WRITE_INT (char*,int) ;
 int assert (int) ;
 int memcpy (char*,int*,int) ;

int lookup_save_write (int *x, int *y, int n, char *s, int sn) {
  char *st = s;

  assert (sn >= (int)sizeof (int));
  WRITE_INT (s, n);
  sn -= sizeof (int);

  assert (sn >= (int)sizeof (int) * 2 * n);
  int d = sizeof (int) * n;
  memcpy (s, x, d);
  s += d;
  memcpy (s, y, d);
  s += d;

  return s - st;
}
