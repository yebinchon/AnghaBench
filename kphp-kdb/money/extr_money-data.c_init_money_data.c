
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int transaction_t ;
struct TYPE_2__ {int * th_last; int * th_first; } ;


 int TRANS_TEMP_HASH_SIZE ;
 TYPE_1__* TrTempHash ;
 int assert (int) ;
 int money_replay_logevent ;
 int replay_logevent ;
 int tot_account_types ;
 int tot_accounts ;
 int tot_transactions ;

int init_money_data (int schema) {
  int i;

  replay_logevent = money_replay_logevent;

  assert (!tot_account_types && !tot_accounts && !tot_transactions);

  for (i = 0; i < TRANS_TEMP_HASH_SIZE; i++) {
    TrTempHash[i].th_first = TrTempHash[i].th_last = (transaction_t *) &TrTempHash[i];
  }

  return 0;
}
