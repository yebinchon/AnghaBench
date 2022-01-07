
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {scalar_t__ Tmp; } ;


 int assert (scalar_t__) ;
 int free_all_buffers (scalar_t__) ;
 scalar_t__ verbosity ;

void net_readvar_callback (struct connection *c) {


  assert (c->Tmp);




  if (verbosity > 0) {


  }

  free_all_buffers (c->Tmp);
  c->Tmp = 0;






}
