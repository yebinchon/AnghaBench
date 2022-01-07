
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ rand_n; scalar_t__ val_n; int perm_last; int perm_middle; int perm_first; } ;
typedef TYPE_1__ dl_crypto ;


 int dl_free (int ,int) ;

void dl_crypto_free (dl_crypto *cr) {
  dl_free (cr->perm_first, sizeof (int) * (size_t)cr->val_n);
  dl_free (cr->perm_middle, sizeof (int) * (size_t)(cr->val_n + cr->rand_n));
  dl_free (cr->perm_last, sizeof (int) * (size_t)(cr->val_n + cr->rand_n));
}
