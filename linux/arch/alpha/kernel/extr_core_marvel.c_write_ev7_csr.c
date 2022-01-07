
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long csr; } ;
typedef TYPE_1__ ev7_csr ;


 TYPE_1__* EV7_CSR_KERN (int,unsigned long) ;
 int mb () ;

__attribute__((used)) static void __attribute__ ((unused))
write_ev7_csr(int pe, unsigned long offset, unsigned long q)
{
 ev7_csr *ev7csr = EV7_CSR_KERN(pe, offset);

 mb();
 ev7csr->csr = q;
 mb();
}
