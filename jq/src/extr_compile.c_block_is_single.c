
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ first; scalar_t__ last; } ;
typedef TYPE_1__ block ;



int block_is_single(block b) {
  return b.first && b.first == b.last;
}
