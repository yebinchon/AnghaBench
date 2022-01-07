
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_cluster {int dummy; } ;
struct TYPE_2__ {struct rpc_cluster** schema_extra; } ;


 TYPE_1__* CurConf ;
 size_t KittenPhpNum ;
 int tree_count_worker (int ) ;
 int worker_tree ;

int kitten_php_current_count (void) {
  struct rpc_cluster *C = CurConf->schema_extra[KittenPhpNum];
  if (!C) {
    return -1;
  }
  return tree_count_worker (worker_tree);
}
