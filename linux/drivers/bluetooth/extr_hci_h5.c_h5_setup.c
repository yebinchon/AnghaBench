
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hci_uart {struct h5* priv; } ;
struct h5 {TYPE_1__* vnd; } ;
struct TYPE_2__ {int (* setup ) (struct h5*) ;} ;


 int stub1 (struct h5*) ;

__attribute__((used)) static int h5_setup(struct hci_uart *hu)
{
 struct h5 *h5 = hu->priv;

 if (h5->vnd && h5->vnd->setup)
  return h5->vnd->setup(h5);

 return 0;
}
