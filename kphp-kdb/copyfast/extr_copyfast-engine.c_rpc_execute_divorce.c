
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_divorce {int dummy; } ;
struct relative {int dummy; } ;
struct connection {int dummy; } ;
struct TYPE_3__ {int divorce_received; } ;
struct TYPE_4__ {TYPE_1__ structured; } ;


 TYPE_2__* STATS ;
 int delete_relative (struct relative*,int ) ;
 int fprintf (int ,char*,int) ;
 struct relative* get_relative_by_connection (struct connection*) ;
 int stderr ;
 int verbosity ;

int rpc_execute_divorce (struct connection *c, struct rpc_divorce *P, int len) {
  if (verbosity >= 2) {
    fprintf (stderr, "rpc_execute_divorce: len = %d\n", len);
  }
  if (len != sizeof (struct rpc_divorce)) {
    return 0;
  }
  STATS->structured.divorce_received ++;
  struct relative *x = get_relative_by_connection (c);
  if (x) {
    delete_relative (x, 0);
  }
  return 0;
}
