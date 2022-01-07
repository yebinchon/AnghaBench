
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct account {struct account* h_next; int acc_id; TYPE_1__* acc_type; } ;
struct TYPE_2__ {int acc_type_id; } ;


 struct account** AccHash ;
 int account_bucket (int ,int ) ;

__attribute__((used)) static int add_account (struct account *A) {
  int b = account_bucket (A->acc_type->acc_type_id, A->acc_id);

  A->h_next = AccHash[b];
  AccHash[b] = A;
  return 0;
}
