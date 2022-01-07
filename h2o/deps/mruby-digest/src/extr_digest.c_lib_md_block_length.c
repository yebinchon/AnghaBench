
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ block_length; } ;
struct mrb_md {TYPE_1__ ctx; } ;



__attribute__((used)) static int
lib_md_block_length(const struct mrb_md *md)
{
  return (int)md->ctx.block_length;
}
