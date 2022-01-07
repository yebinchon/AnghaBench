
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_cluster_bucket {int dummy; } ;
typedef enum tl_type { ____Placeholder_tl_type } tl_type ;


 int tl_type_raw_msg ;

enum tl_type __udp_get_type (struct rpc_cluster_bucket *B) {
  return tl_type_raw_msg;
}
