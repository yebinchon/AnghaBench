
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int i; unsigned char* s; unsigned char j; } ;


 TYPE_1__ rs ;

__attribute__((used)) static inline void
arc4_addrandom(const unsigned char *dat, int datlen)
{
 int n;
 unsigned char si;

 rs.i--;
 for (n = 0; n < 256; n++) {
  rs.i = (rs.i + 1);
  si = rs.s[rs.i];
  rs.j = (rs.j + si + dat[n % datlen]);
  rs.s[rs.i] = rs.s[rs.j];
  rs.s[rs.j] = si;
 }
 rs.j = rs.i;
}
