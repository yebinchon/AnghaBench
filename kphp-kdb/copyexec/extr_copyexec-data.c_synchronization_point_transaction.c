
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_copyexec_aux_transaction_header {int dummy; } ;


 int LEV_COPYEXEC_AUX_TRANSACTION_SYNCHRONIZE ;
 int memcmp (void*,int const*,int) ;

__attribute__((used)) static int synchronization_point_transaction (void *b, int blen) {
  const int tp = LEV_COPYEXEC_AUX_TRANSACTION_SYNCHRONIZE;
  return (blen == 24 + sizeof (struct lev_copyexec_aux_transaction_header) && !memcmp (b + sizeof (struct lev_copyexec_aux_transaction_header), &tp, 4));
}
