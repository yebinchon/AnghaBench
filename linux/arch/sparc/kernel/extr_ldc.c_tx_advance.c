
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ldc_channel {int tx_num_entries; } ;


 unsigned long __advance (unsigned long,int ) ;

__attribute__((used)) static unsigned long tx_advance(struct ldc_channel *lp, unsigned long off)
{
 return __advance(off, lp->tx_num_entries);
}
