
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int transaction_id; scalar_t__ status; } ;
typedef TYPE_1__ transaction_t ;
struct lev_copyexec_main_transaction_status {int dummy; } ;


 scalar_t__ LEV_COPYEXEC_MAIN_TRANSACTION_STATUS ;
 struct lev_copyexec_main_transaction_status* alloc_log_event (scalar_t__,int const,int ) ;
 int memset (char*,int ,int const) ;

__attribute__((used)) static struct lev_copyexec_main_transaction_status *transaction_alloc_log_event_status (transaction_t *T) {
  const int sz = sizeof (struct lev_copyexec_main_transaction_status);
  struct lev_copyexec_main_transaction_status *E = alloc_log_event (LEV_COPYEXEC_MAIN_TRANSACTION_STATUS + T->status, sz, T->transaction_id);
  char *p = (char *) E;
  memset (p + 8, 0, sz - 8);
  return E;
}
