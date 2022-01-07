
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_get_file_data {int fwd_header_ints; struct rpc_get_file_data* fwd_header; TYPE_1__* meta; } ;
struct TYPE_2__ {int refcnt; } ;


 int zfree (struct rpc_get_file_data*,int) ;

__attribute__((used)) static void rpc_get_file_data_free (struct rpc_get_file_data *L) {
  if (L->meta) {
    L->meta->refcnt--;
  }
  if (L->fwd_header) {
    zfree (L->fwd_header, 4 * L->fwd_header_ints);
  }
  zfree (L, sizeof (struct rpc_get_file_data));
}
