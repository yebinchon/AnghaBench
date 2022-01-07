
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int kprintf (char*,char const,int const) ;

__attribute__((used)) static unsigned long long get_oct (const char buf[512], const int offset, const int len) {
  int i;
  unsigned long long r = 0;
  for (i = 0; i < len; i++) {
    int x = buf[offset+i] - '0';
    if (x < 0 || x >= 8) {
      kprintf ("found not octal digit(%c) at pos %d.\n", buf[offset+i], offset + i);
      assert (x >= 0 && x < 8);
    }
    r <<= 3;
    r |= x;
  }
  return r;
}
