
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ first; scalar_t__ last; } ;
typedef TYPE_1__ block ;



int block_is_noop(block b) {
  return (b.first == 0 && b.last == 0);
}
