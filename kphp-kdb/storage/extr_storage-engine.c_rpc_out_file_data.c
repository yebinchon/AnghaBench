
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_get_file_data {int offset; int limit; } ;
struct lev_storage_file {int size; scalar_t__ data; } ;


 int rpc_out_cstring (char*,int) ;

__attribute__((used)) static void rpc_out_file_data (struct rpc_get_file_data *L, const struct lev_storage_file *E) {
  int sz = E->size - L->offset;
  if (sz > L->limit) {
    sz = L->limit;
  }
  char *p = (char *) E->data;
  if (sz < 0) {
    sz = 0;
  } else {
    p += L->offset;
  }
  rpc_out_cstring (p, sz);
}
