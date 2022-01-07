
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * start; int * ptr; int * end; } ;
struct TYPE_4__ {TYPE_1__ buf; } ;
struct lanai_vcc {TYPE_2__ tx; } ;


 int APRINTK (int,char*,int *) ;
 int cpu_to_be32 (int) ;

__attribute__((used)) static inline void vcc_tx_add_aal5_trailer(struct lanai_vcc *lvcc,
 int len, int cpi, int uu)
{
 APRINTK((((unsigned long) lvcc->tx.buf.ptr) & 15) == 8,
     "vcc_tx_add_aal5_trailer: bad ptr=%p\n", lvcc->tx.buf.ptr);
 lvcc->tx.buf.ptr += 2;
 lvcc->tx.buf.ptr[-2] = cpu_to_be32((uu << 24) | (cpi << 16) | len);
 if (lvcc->tx.buf.ptr >= lvcc->tx.buf.end)
  lvcc->tx.buf.ptr = lvcc->tx.buf.start;
}
