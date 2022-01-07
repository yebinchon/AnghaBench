
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_extension {scalar_t__ num; } ;


 scalar_t__ MAX_EXTENSIONS ;
 int assert (int) ;
 struct rpc_extension** extensions ;
 scalar_t__ extensions_num ;

void rpc_extension_add (struct rpc_extension *E) {
  assert (extensions_num < MAX_EXTENSIONS);
  E->num = extensions_num;
  extensions[extensions_num ++] = E;
}
