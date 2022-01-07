
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int * ptr; int * start; scalar_t__ end; } ;
struct TYPE_4__ {TYPE_1__ buf; } ;
struct lanai_vcc {TYPE_2__ tx; } ;


 int memcpy (int *,unsigned char const*,int) ;

__attribute__((used)) static inline void vcc_tx_memcpy(struct lanai_vcc *lvcc,
 const unsigned char *src, int n)
{
 unsigned char *e;
 int m;
 e = ((unsigned char *) lvcc->tx.buf.ptr) + n;
 m = e - (unsigned char *) lvcc->tx.buf.end;
 if (m < 0)
  m = 0;
 memcpy(lvcc->tx.buf.ptr, src, n - m);
 if (m != 0) {
  memcpy(lvcc->tx.buf.start, src + n - m, m);
  e = ((unsigned char *) lvcc->tx.buf.start) + m;
 }
 lvcc->tx.buf.ptr = (u32 *) e;
}
