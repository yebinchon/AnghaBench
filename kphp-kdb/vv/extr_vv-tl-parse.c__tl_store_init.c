
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connection {int dummy; } ;
struct TYPE_2__ {int remote_pid; } ;


 TYPE_1__* RPCS_DATA (struct connection*) ;
 int * TL_OUT_PID ;
 int __tl_store_init (struct connection*,int ,int ,int *,int,int,long long) ;
 int tl_out_conn_methods ;
 int tl_type_conn ;

__attribute__((used)) static inline int _tl_store_init (struct connection *c, long long qid, int keep_error) {
  if (c) {
    TL_OUT_PID = &(RPCS_DATA(c)->remote_pid);
  } else {
    TL_OUT_PID = 0;
  }
  return __tl_store_init (c, 0, tl_type_conn, &tl_out_conn_methods, (1 << 27), keep_error, qid);
}
