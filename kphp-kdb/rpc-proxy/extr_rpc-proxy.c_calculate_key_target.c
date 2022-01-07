
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void rpc_cluster_bucket ;
struct TYPE_3__ {int * fun_pos; } ;
struct TYPE_4__ {TYPE_1__ methods; } ;


 TYPE_2__* CC ;
 int RPC_FUN_START (int ,void**) ;
 size_t RPC_FUN_STRING_FORWARD ;
 int vkprintf (int,char*,char const*,int) ;

struct rpc_cluster_bucket *calculate_key_target (const char *key, int key_len) {
  vkprintf (3, "calculate_key_target: key = %s, key_len = %d\n", key, key_len);
  void *T[3];
  T[0] = (void *)key;
  T[1] = (void *)(long)key_len;
  T[2] = 0;
  int r = RPC_FUN_START(CC->methods.fun_pos[RPC_FUN_STRING_FORWARD], T);
  if (r < 0) { return 0; }
  return T[2];
}
