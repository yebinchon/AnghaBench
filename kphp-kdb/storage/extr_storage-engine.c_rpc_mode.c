
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gather_data {int key; } ;


 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int rpc_mode (struct gather_data *G) {
  if (strcmp (G->key, "RPC")) {
    return 0;
  }
  return 1;
}
