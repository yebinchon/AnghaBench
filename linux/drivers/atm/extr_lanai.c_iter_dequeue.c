
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t vci_t ;
struct TYPE_2__ {int (* unqueue ) (struct lanai_dev*,struct lanai_vcc*,int) ;int * atmvcc; } ;
struct lanai_vcc {TYPE_1__ tx; } ;
struct lanai_dev {int backlog_vccs; struct lanai_vcc** vccs; } ;


 int TXREADPTR_GET_PTR (int ) ;
 int __clear_bit (size_t,int ) ;
 int cardvcc_read (struct lanai_vcc*,int ) ;
 int stub1 (struct lanai_dev*,struct lanai_vcc*,int) ;
 int vcc_is_backlogged (struct lanai_vcc*) ;
 int vcc_txreadptr ;

__attribute__((used)) static void iter_dequeue(struct lanai_dev *lanai, vci_t vci)
{
 struct lanai_vcc *lvcc = lanai->vccs[vci];
 int endptr;
 if (lvcc == ((void*)0) || lvcc->tx.atmvcc == ((void*)0) ||
     !vcc_is_backlogged(lvcc)) {
  __clear_bit(vci, lanai->backlog_vccs);
  return;
 }
 endptr = TXREADPTR_GET_PTR(cardvcc_read(lvcc, vcc_txreadptr));
 lvcc->tx.unqueue(lanai, lvcc, endptr);
}
