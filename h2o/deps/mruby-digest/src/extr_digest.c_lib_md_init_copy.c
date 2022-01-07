
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrb_md {int ctx; } ;
typedef int mrb_state ;


 int picohash_reset (int *) ;

__attribute__((used)) static void
lib_md_init_copy(mrb_state *mrb, struct mrb_md *mdnew, struct mrb_md *mdold)
{
  mdnew->ctx = mdold->ctx;
  picohash_reset(&mdnew->ctx);
}
