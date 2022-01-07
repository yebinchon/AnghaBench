
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int created_at; scalar_t__ status; int transaction_id; } ;
typedef TYPE_1__ transaction_t ;


 scalar_t__ trs_deleting ;

__attribute__((used)) static inline void store_transaction_short (long long **RR, transaction_t *T, int flags) {
  *((*RR)++) = T->transaction_id;
  if (flags & 1) {
    *((*RR)++) = trs_deleting - T->status;
  }
  if (flags & 2) {
    *((*RR)++) = T->created_at;
  }
}
