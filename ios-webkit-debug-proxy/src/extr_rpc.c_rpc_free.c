
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_struct {int dummy; } ;
typedef scalar_t__ rpc_t ;


 int free (scalar_t__) ;
 int memset (scalar_t__,int ,int) ;

void rpc_free(rpc_t self) {
  if (self) {
    memset(self, 0, sizeof(struct rpc_struct));
    free(self);
  }
}
