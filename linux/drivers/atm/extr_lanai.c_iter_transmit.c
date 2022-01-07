
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t vci_t ;
struct TYPE_2__ {int endptr; int (* unqueue ) (struct lanai_dev*,struct lanai_vcc*,int ) ;} ;
struct lanai_vcc {TYPE_1__ tx; } ;
struct lanai_dev {struct lanai_vcc** vccs; } ;


 int stub1 (struct lanai_dev*,struct lanai_vcc*,int ) ;
 scalar_t__ vcc_is_backlogged (struct lanai_vcc*) ;

__attribute__((used)) static void iter_transmit(struct lanai_dev *lanai, vci_t vci)
{
 struct lanai_vcc *lvcc = lanai->vccs[vci];
 if (vcc_is_backlogged(lvcc))
  lvcc->tx.unqueue(lanai, lvcc, lvcc->tx.endptr);
}
