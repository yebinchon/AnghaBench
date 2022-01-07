
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io7 {int dummy; } ;


 int mb () ;

__attribute__((used)) static void
io7_redirect_irq(struct io7 *io7,
   volatile unsigned long *csr,
   unsigned int where)
{
 unsigned long val;

 val = *csr;
 val &= ~(0x1ffUL << 24);
 val |= ((unsigned long)where << 24);

 *csr = val;
 mb();
 *csr;
}
