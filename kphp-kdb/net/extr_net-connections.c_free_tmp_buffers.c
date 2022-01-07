
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {scalar_t__ Tmp; } ;


 int free_all_buffers (scalar_t__) ;

int free_tmp_buffers (struct connection *c) {
  if (c->Tmp) {
    free_all_buffers (c->Tmp);
    c->Tmp = 0;
  }
  return 0;
}
