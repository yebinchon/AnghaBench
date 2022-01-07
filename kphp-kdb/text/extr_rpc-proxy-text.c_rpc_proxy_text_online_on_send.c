
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gather {int dummy; } ;
struct TYPE_2__ {int tot_buckets; } ;


 TYPE_1__* CC ;
 int* Q ;
 int Q_op ;
 int Q_size ;
 int Q_uid ;
 int* tl_store_get_ptr (int) ;
 int tl_store_int (int) ;

int rpc_proxy_text_online_on_send (struct gather *G, int num) {
  tl_store_int (Q_op);
  tl_store_int (Q_uid);
  int *size = tl_store_get_ptr (4);
  int i;
  int z = 0;
  for (i = 0; i < Q_size; i++) if (Q[i] % CC->tot_buckets == num) {
    tl_store_int (Q[i]);
    z ++;
  }
  if (!z) {
    return -1;
  } else {
    *size = z;
    return 0;
  }
}
