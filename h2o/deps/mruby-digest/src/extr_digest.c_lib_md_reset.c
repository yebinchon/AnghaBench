
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrb_md {int ctx; } ;
typedef int mrb_state ;


 int picohash_reset (int *) ;

__attribute__((used)) static void
lib_md_reset(mrb_state *mrb, struct mrb_md *md)
{
  picohash_reset(&md->ctx);
}
