
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lev_money_new_acc {size_t acc_type_id; scalar_t__ currency; int comm_len; int comment; int withdraw_code; int access_code; int auth_code; int ip; int owner_id; int acc_id; } ;
struct account {int comm_len; TYPE_1__* acc_type; int * comment; int withdraw_code; int access_code; int auth_code; int ip; int owner_id; int acc_id; } ;
struct TYPE_2__ {scalar_t__ currency; int acc_class; } ;


 TYPE_1__** AccTypes ;
 unsigned int MAX_ACCOUNT_TYPE ;
 size_t MIN_CURRENCY_ID ;
 int add_account (struct account*) ;
 int assert (int) ;
 int * currency_accounts ;
 int get_account (size_t,int ) ;
 int memcpy (int *,int ,int) ;
 int special_accounts ;
 int tot_accounts ;
 int * zmalloc (int) ;
 struct account* zmalloc0 (int) ;

__attribute__((used)) static int create_account (struct lev_money_new_acc *E, int flag) {
  struct account *A;

  assert ((unsigned) E->acc_type_id <= MAX_ACCOUNT_TYPE && AccTypes[E->acc_type_id]);
  assert (!get_account (E->acc_type_id, E->acc_id));
  assert (E->currency == AccTypes[E->acc_type_id]->currency);

  A = zmalloc0 (sizeof (struct account));
  A->acc_type = AccTypes[E->acc_type_id];
  A->acc_id = E->acc_id;

  A->owner_id = E->owner_id;
  A->ip = E->ip;
  A->auth_code = E->auth_code;

  if (flag) {
    A->access_code = E->access_code;
    A->withdraw_code = E->withdraw_code;
    if (E->comm_len) {
      A->comm_len = E->comm_len;
      assert (A->comm_len >= 0 && A->comm_len <= 4096);
      A->comment = zmalloc (E->comm_len + 1);
      memcpy (A->comment, E->comment, E->comm_len + 1);
      assert (!A->comment[A->comm_len]);
    }
  }

  add_account (A);

  ++tot_accounts;
  if (A->acc_type->acc_class & 4) {
    ++special_accounts;
  }

  ++currency_accounts[E->currency-MIN_CURRENCY_ID];

  return 0;
}
