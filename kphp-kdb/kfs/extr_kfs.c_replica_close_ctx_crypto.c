
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* kfs_replica_handle_t ;
struct TYPE_3__ {int * ctx_crypto; } ;


 int free (int *) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void replica_close_ctx_crypto (kfs_replica_handle_t R) {
  if (R->ctx_crypto) {
    memset (R->ctx_crypto, 0, sizeof (*R->ctx_crypto));
    free (R->ctx_crypto);
    R->ctx_crypto = ((void*)0);
  }
}
