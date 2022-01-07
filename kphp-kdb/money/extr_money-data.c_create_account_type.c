
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_money_new_atype {int acc_type_id; scalar_t__ currency; scalar_t__ acc_class; scalar_t__ creator_id; int comm_len; int comment; int create_code; int block_code; int withdraw_code; int access_code; int admin_code; int auth_code; int ip; } ;
struct account_type {scalar_t__ currency; int acc_type_id; scalar_t__ acc_class; scalar_t__ creator_id; int comm_len; int * comment; int create_code; int block_code; int withdraw_code; int access_code; int admin_code; int auth_code; int ip; } ;


 struct account_type** AccTypes ;
 int MAX_ACCOUNT_TYPE ;
 scalar_t__ MAX_CURRENCY_ID ;
 scalar_t__ MIN_CURRENCY_ID ;
 int assert (int) ;
 int memcpy (int *,int ,int) ;
 int tot_account_types ;
 int zfree (int *,int) ;
 int * zmalloc (int) ;
 struct account_type* zmalloc0 (int) ;

__attribute__((used)) static int create_account_type (struct lev_money_new_atype *E) {
  struct account_type *A;
  int t = E->acc_type_id;
  assert (t > 0 && t <= MAX_ACCOUNT_TYPE);
  assert (E->currency >= MIN_CURRENCY_ID && E->currency <= MAX_CURRENCY_ID);
  if (!AccTypes[t]) {
    AccTypes[t] = A = zmalloc0 (sizeof (struct account_type));
    A->currency = E->currency;
    A->acc_type_id = t;
    A->acc_class = E->acc_class;
    A->creator_id = E->creator_id;
    A->ip = E->ip;
  } else {
    A = AccTypes[t];
    assert (A->currency == E->currency && A->creator_id == E->creator_id && A->acc_class == E->acc_class);
    zfree (A->comment, A->comm_len + 1);
  }
  A->auth_code = E->auth_code;
  A->admin_code = E->admin_code;
  A->access_code = E->access_code;
  A->withdraw_code = E->withdraw_code;
  A->block_code = E->block_code;
  A->create_code = E->create_code;
  A->comm_len = E->comm_len;
  assert (A->comm_len >= 0 && A->comm_len <= 4096);
  A->comment = zmalloc (E->comm_len + 1);
  memcpy (A->comment, E->comment, A->comm_len + 1);
  assert (!A->comment[A->comm_len]);

  ++tot_account_types;

  return 0;
}
